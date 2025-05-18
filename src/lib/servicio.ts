import { pool } from "./database";

export interface Servicio {
  id: number;
  nombre: string;
  descripcion: string;
  precio: number;
}

export async function getServicio(): Promise<Servicio[]> {
  const [rows] = await pool.query("SELECT * FROM Servicio");
  return rows as Servicio[];
}
