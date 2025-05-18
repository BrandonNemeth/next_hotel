import { pool } from "./database";

export interface Cliente {
  id: number;
  nombre: string;
  apellido: string;
  email: string;
  telefono: string;
}

export async function getCliente(): Promise<Cliente[]> {
  const [rows] = await pool.query("SELECT * FROM Cliente");
  return rows as Cliente[];
}
