import { NextResponse, NextRequest } from "next/server";
import { getReservacion } from "@/lib/reservacion";
import { getCliente } from "@/lib/cliente";
import { getClientesVIP } from "@/lib/clientesvips";
import { getPago } from "@/lib/pago";
import { getServicio } from "@/lib/servicio";
import { getHabitacion } from "@/lib/habitacion";
import { getFactura } from "@/lib/factura";
import { getFeedback } from "@/lib/feedback";
import type { ResultSetHeader, PoolConnection } from "mysql2/promise";

export async function GET(
  req: NextRequest,
  { params: paramsPromise }: { params: Promise<{ tabla: string }> },
) {
  const { tabla } = await paramsPromise;

  const tableHandlers: Record<string, () => Promise<unknown>> = {
    reservacion: getReservacion,
    cliente: getCliente,
    vips: getClientesVIP,
    pago: getPago,
    factura: getFactura,
    servicio: getServicio,
    feedback: getFeedback,
    habitacion: getHabitacion,
  };

  const handler = tableHandlers[tabla];

  if (handler) {
    return NextResponse.json(await handler());
  }

  return NextResponse.json({ error: "Tabla no soportada" }, { status: 400 });
}

export async function POST(
  req: NextRequest,
  { params: paramsPromise }: { params: Promise<{ tabla: string }> },
) {
  const params = await paramsPromise;

  if (params.tabla === "cliente") {
    const body = await req.json();
    body.num_reservaciones = Number(body.num_reservaciones);

    const {
      tipo_cliente,
      direccion,
      telefono_celular,
      RFC,
      email,
      pais_procedencia,
      num_reservaciones,
      fecha_alta,
    } = body;

    if (
      !tipo_cliente ||
      !direccion ||
      !telefono_celular ||
      !RFC ||
      !email ||
      !pais_procedencia ||
      isNaN(num_reservaciones) ||
      !fecha_alta
    ) {
      return NextResponse.json(
        { error: "Missing or invalid required fields for cliente" },
        { status: 400 },
      );
    }

    try {
      const mod = await import("@/lib/database");
      const [result] = (await mod.pool.query(
        `INSERT INTO Cliente
        (tipo_cliente, direccion, telefono_celular, RFC, email, pais_procedencia, num_reservaciones, fecha_alta)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          tipo_cliente,
          direccion,
          telefono_celular,
          RFC,
          email,
          pais_procedencia,
          num_reservaciones,
          fecha_alta,
        ],
      )) as [ResultSetHeader, unknown];

      return NextResponse.json({ success: true, insertId: result.insertId });
    } catch (error) {
      console.error("Database error (Cliente):", error);
      return NextResponse.json(
        { error: "Database error", details: String(error) },
        { status: 500 },
      );
    }
  } else if (params.tabla === "reservacion") {
    const body = await req.json();

    const cliente_id_from_form = Number(body.cliente_id);
    const habitacion_id_from_form = Number(body.habitacion_id);
    const fecha_inicio_from_form = body.fecha_inicio;
    const fecha_fin_from_form = body.fecha_fin;

    if (
      isNaN(cliente_id_from_form) ||
      isNaN(habitacion_id_from_form) ||
      !fecha_inicio_from_form ||
      !fecha_fin_from_form
    ) {
      return NextResponse.json(
        { error: "Missing or invalid required fields for reservacion form" },
        { status: 400 },
      );
    }

    let connection: PoolConnection | null = null;
    try {
      const mod = await import("@/lib/database");
      connection = await mod.pool.getConnection();
      await connection.beginTransaction();

      const [reservacionResult] = (await connection.query(
        `INSERT INTO Reservacion
         (id_cliente, fecha_creacion, metodo, check_in, check_out, num_personas, estado)
         VALUES (?, CURDATE(), ?, ?, ?, ?, ?)`,
        [
          cliente_id_from_form,
          "internet", // metodo
          fecha_inicio_from_form, // check_in
          fecha_fin_from_form, // check_out
          1, // num_personas
          "confirmada", // estado
        ],
      )) as [ResultSetHeader, unknown];

      const newReservacionId = reservacionResult.insertId;

      if (!newReservacionId) {
        throw new Error("Failed to create reservation record.");
      }

      const tarifa_por_noche = 100.0;
      const descuentos = 0.0;

      await connection.query(
        `INSERT INTO DetalleReserva
         (id_reservacion, id_habitacion, tarifa_por_noche, descuentos)
         VALUES (?, ?, ?, ?)`,
        [
          newReservacionId,
          habitacion_id_from_form,
          tarifa_por_noche,
          descuentos,
        ],
      );

      await connection.commit();

      return NextResponse.json({
        success: true,
        reservacionId: newReservacionId,
      });
    } catch (error) {
      if (connection) {
        await connection.rollback();
      }
      console.error("Database error (Reservacion/DetalleReserva):", error);
      return NextResponse.json(
        { error: "Database transaction failed", details: String(error) },
        { status: 500 },
      );
    } finally {
      if (connection) {
        connection.release();
      }
    }
  }

  return NextResponse.json(
    { error: "POST not supported for this table" },
    { status: 405 },
  );
}
