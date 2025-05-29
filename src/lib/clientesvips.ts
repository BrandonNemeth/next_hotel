import { pool } from "./database";

export interface ClientesVIP {
  id_cliente: number;
  nivel_vip: string;
  total_reservas: number;
  fecha_ingreso: Date;
  fecha_fin: Date;
}

export async function getClientesVIP(): Promise<ClientesVIP[]> {
  const [rows] = await pool.query("SELECT * FROM ClientesVIP");
  return rows as ClientesVIP[];
}
