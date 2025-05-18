import { pool } from "./database";

export interface Habitacion {
  id: number;
  nombre: string;
  tipo: string;
  precio: number;
  estado: string;
}
export async function getHabitacion(): Promise<Habitacion[]> {
  const [rows] = await pool.query("SELECT * FROM Habitacion");
  return rows as Habitacion[];
}
