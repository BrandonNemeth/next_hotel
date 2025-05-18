import { pool } from "./database";

export interface Reservacion {
  id: number;
  cliente_id: number;
  habitacion_id: number;
  fecha_inicio: string;
  fecha_fin: string;
}

export async function getReservacion(): Promise<Reservacion[]> {
  const [rows] = await pool.query("SELECT * FROM Reservacion");
  return rows as Reservacion[];
}
