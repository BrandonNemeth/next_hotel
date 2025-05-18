import { pool } from "./database";

export interface Pago {
  id: number;
  cliente_id: number;
  reservacion_id: number;
  monto: number;
  fecha_pago: string;
  metodo_pago: string;
  estado: string;
}

export async function getPago(): Promise<Pago[]> {
  const [rows] = await pool.query("SELECT * FROM Pago");
  return rows as Pago[];
}
