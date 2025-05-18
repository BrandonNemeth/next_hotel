import { pool } from "./database";
export interface Feedback {
  id: number;
  cliente_id: number;
  habitacion_id: number;
  servicio_id: number;
  comentario: string;
  calificacion: number;
}
export async function getFeedback(): Promise<Feedback[]> {
  const [rows] = await pool.query("SELECT * FROM Feedback");
  return rows as Feedback[];
}
