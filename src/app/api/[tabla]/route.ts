import { NextResponse, NextRequest } from "next/server";
import { getReservacion } from "@/lib/reservacion";
import { getCliente } from "@/lib/cliente";
import { getPago } from "@/lib/pago";
import { getServicio } from "@/lib/servicio";
import { getHabitacion } from "@/lib/habitacion";
import { getFactura } from "@/lib/factura";
import { getFeedback } from "@/lib/feedback";
import type { ResultSetHeader } from "mysql2/promise";

export async function GET(
  req: NextRequest,
  { params: paramsPromise }: { params: Promise<{ tabla: string }> },
) {
  const params = await paramsPromise;

  switch (params.tabla) {
    case "reservacion":
      return NextResponse.json(await getReservacion());
    case "cliente":
      return NextResponse.json(await getCliente());
    case "pago":
      return NextResponse.json(await getPago());
    case "factura":
      return NextResponse.json(await getFactura());
    case "servicio":
      return NextResponse.json(await getServicio());
    case "feedback":
      return NextResponse.json(await getFeedback());
    case "habitacion":
      return NextResponse.json(await getHabitacion());
    default:
      return NextResponse.json(
        { error: "Tabla no soportada" },
        { status: 400 },
      );
  }
}
export async function POST(
  req: NextRequest,
  { params: paramsPromise }: { params: Promise<{ tabla: string }> },
) {
  const params = await paramsPromise;

  if (params.tabla === "cliente") {
    const body = await req.json();
    body.num_reservaciones = Number(body.num_reservaciones); // <-- conversión aquí

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

    // Validación estricta
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
        { error: "Missing or invalid required fields" },
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
      console.error("Database error:", error); // <--- Agrega esto
      return NextResponse.json(
        { error: "Database error", details: String(error) },
        { status: 500 },
      );
    }
  }

  return NextResponse.json(
    { error: "POST not supported for this table" },
    { status: 405 },
  );
}
