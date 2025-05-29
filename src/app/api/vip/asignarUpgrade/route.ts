// Archivo: next_hotel/src/app/api/vip/asignarUpgrade/route.ts
import { NextResponse, NextRequest } from "next/server";
import { pool } from "@/lib/database";
import type { ResultSetHeader } from "mysql2/promise";

// Interfaz para errores de MySQL que pueden venir de la librería mysql2
interface MySQLError extends Error {
  code?: string;
  errno?: number;
  sqlMessage?: string;
  sqlState?: string;
}

export async function POST(req: NextRequest) {
  let cliente_id_for_error_message: string | number = "desconocido"; // Para usar en mensajes de error si el ID original falla

  try {
    const body = await req.json();
    const cliente_id = body.cliente_id; // Este es el que se usa para la query
    const nivel_vip = body.nivel_vip;

    cliente_id_for_error_message =
      cliente_id !== undefined ? cliente_id : "desconocido";

    if (
      cliente_id === undefined ||
      cliente_id === null ||
      typeof cliente_id !== "number"
    ) {
      return NextResponse.json(
        { error: "El 'cliente_id' es requerido y debe ser un número." },
        { status: 400 },
      );
    }
    if (
      !nivel_vip ||
      typeof nivel_vip !== "string" ||
      nivel_vip.trim() === ""
    ) {
      return NextResponse.json(
        { error: "El 'nivel_vip' es requerido y debe ser un texto no vacío." },
        { status: 400 },
      );
    }

    // Llamar al stored procedure MarcarClienteVIP
    // Asumiendo que el SP se llama MarcarClienteVIP y está definido en tu DB
    const [result] = await pool.query<ResultSetHeader>(
      "CALL MarcarClienteVIP(?, ?)",
      [cliente_id, nivel_vip],
    );

    // Si el SP se ejecuta sin lanzar una excepción (como un SIGNAL), consideramos la operación base como exitosa.
    // La lógica específica de si se insertó, actualizó, o no se hizo nada (porque ya existía sin cambios)
    // reside dentro del SP. `affectedRows` puede dar una pista.
    if (result.affectedRows > 0) {
      return NextResponse.json({
        success: true,
        message: `Cliente ${cliente_id} procesado como VIP con nivel ${nivel_vip}. Filas afectadas: ${result.affectedRows}.`,
      });
    } else {
      // Esto puede ocurrir si el SP no realizó cambios (ej: el cliente ya tenía ese nivel VIP)
      return NextResponse.json({
        success: true, // La llamada al SP fue exitosa, aunque no haya cambiado filas.
        message: `Operación VIP para cliente ${cliente_id} con nivel ${nivel_vip} procesada. No se afectaron filas (posiblemente sin cambios necesarios).`,
      });
    }
  } catch (error) {
    console.error(
      `Error al llamar al stored procedure MarcarClienteVIP para cliente ID '${cliente_id_for_error_message}':`,
      error,
    );

    let errorMessage = "Error de base de datos desconocido al procesar VIP.";
    let statusCode = 500;
    const typedError = error as MySQLError; // Tipar el error para acceder a propiedades específicas de MySQL

    if (typedError.sqlMessage) {
      errorMessage = typedError.sqlMessage;
      if (typedError.sqlMessage.includes("El cliente especificado no existe")) {
        statusCode = 404; // Not Found
        errorMessage = `El cliente con ID '${cliente_id_for_error_message}' no existe en la tabla de clientes.`;
      } else if (typedError.errno === 1062) {
        // Código de error para entrada duplicada
        // Esto podría pasar si id_cliente es PK en ClientesVIP y el SP intenta un INSERT simple sin ON DUPLICATE KEY
        // o si hay otra restricción UNIQUE que se viola.
        errorMessage = `El cliente con ID '${cliente_id_for_error_message}' ya es VIP o hay un conflicto de ID (entrada duplicada).`;
        statusCode = 409; // Conflict
      } else if (typedError.errno === 1452) {
        // Foreign key constraint fails
        errorMessage = `No se pudo procesar VIP para el cliente ID '${cliente_id_for_error_message}'. Verifique que el cliente exista.`;
        statusCode = 400; // Bad Request (o 404 si es más apropiado)
      }
      // Puedes añadir más manejadores para otros error.errno si conoces los que tu SP podría generar.
    } else if (error instanceof Error) {
      errorMessage = error.message; // Error genérico de JavaScript
    }

    return NextResponse.json(
      { error: "Error al procesar la asignación VIP.", details: errorMessage },
      { status: statusCode },
    );
  }
}
