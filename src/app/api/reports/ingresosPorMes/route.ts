import { NextResponse, NextRequest } from "next/server";
import { pool } from "@/lib/database";
import type { RowDataPacket } from "mysql2/promise";

// Interfaz del Stored Procedure
interface ReporteIngresosDataSP extends RowDataPacket {
  año: number;
  mes: number;
  ingresos_totales: string | null;
}

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const yearParam = searchParams.get("year");
    const monthParam = searchParams.get("month");

    if (!yearParam || !monthParam) {
      return NextResponse.json(
        { error: "Los parámetros 'year' (año) y 'month' (mes) son requeridos" },
        { status: 400 },
      );
    }

    const year = parseInt(yearParam, 10);
    const month = parseInt(monthParam, 10);

    if (isNaN(year) || isNaN(month) || month < 1 || month > 12) {
      return NextResponse.json(
        {
          error: "El año y el mes deben ser números válidos (mes entre 1 y 12)",
        },
        { status: 400 },
      );
    }

    const [queryResult] = await pool.query<ReporteIngresosDataSP[][]>(
      "CALL ReporteIngresosPorMes(?, ?)",
      [year, month],
    );

    const rows = queryResult[0];

    if (rows && rows.length > 0) {
      const reportDataFromSP = rows[0];

      if (reportDataFromSP) {
        // Verificar si el objeto de fila existe
        const clientResponseData = {
          year: reportDataFromSP.año,
          month: reportDataFromSP.mes,
          // Si ingresos_totales es null (sin ingresos), enviar "0.00", de lo contrario enviar el valor
          sum:
            reportDataFromSP.ingresos_totales === null
              ? "0.00"
              : reportDataFromSP.ingresos_totales,
        };
        return NextResponse.json({ success: true, data: clientResponseData });
      } else {
        // Este caso sería raro si rows.length > 0, pero es bueno por seguridad
        console.error(
          "La fila de datos del reporte es undefined aunque el array de filas estaba poblado.",
        );
        return NextResponse.json(
          {
            success: false,
            error:
              "Error de formato en los datos del reporte: la fila es undefined.",
          },
          { status: 500 },
        );
      }
    } else {
      console.warn(
        "El SP ReporteIngresosPorMes no devolvió filas. Esto es inesperado para la lógica actual del SP.",
      );
      return NextResponse.json({
        success: true,
        data: { year: year, month: month, sum: "0.00" },
        message:
          "No se encontraron datos de ingresos para el período seleccionado (SP no devolvió filas).",
      });
    }
  } catch (error) {
    console.error(
      "Error al llamar al stored procedure ReporteIngresosPorMes:",
      error,
    );
    const errorMessage =
      error instanceof Error
        ? error.message
        : "Error de base de datos desconocido"; // Mensaje genérico
    return NextResponse.json(
      {
        error: "Error de base de datos al procesar el reporte de ingresos",
        details: errorMessage,
      },
      { status: 500 },
    );
  }
}
