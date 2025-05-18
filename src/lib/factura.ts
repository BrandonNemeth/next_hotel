import { pool } from "./database";

export interface Factura {
  id: number;
  cliente_id: number;
  fecha_emision: string;
  total: number;
}
export async function getFactura(): Promise<Factura[]> {
  const [rows] = await pool.query("SELECT * FROM Factura");
  return rows as Factura[];
}
