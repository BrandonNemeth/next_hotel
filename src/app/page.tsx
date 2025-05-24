"use client";
import React, { useState } from "react";
import { Table } from "./components/Table";
import { ReservacionForm } from "./components/ReservacionForm";
import Link from "next/link";

console.log("HomePage cargado");

const tablas = [
  "cliente",
  "habitacion",
  "reservacion",
  "factura",
  "pago",
  "servicio",
  "feedback",
];

type TableRow = Record<string, unknown>;

export default function HomePage() {
  const [tablaActual, setTablaActual] = useState<string | null>(null);
  const [datos, setDatos] = useState<TableRow[]>([]);
  const [showForm, setShowForm] = useState(false);

  const fetchTabla = async (tabla: string) => {
    if (tablaActual === tabla) {
      setTablaActual(null);
      setDatos([]);
      return;
    }
    const res = await fetch(`/api/${tabla}`);
    const data = await res.json();
    setTablaActual(tabla);
    setDatos(data);
  };

  function handleReservacionSuccessAction() {
    setShowForm(false);
  }

  return (
    <main>
      <nav>
        {tablas.map((tabla) => (
          <button key={tabla} onClick={() => fetchTabla(tabla)}>
            {tabla.charAt(0).toUpperCase() + tabla.slice(1)}
          </button>
        ))}
        <button onClick={() => setShowForm(true)}>Nueva Reservación</button>
        <Link href="/cliente/nuevo">
          <button>Nuevo Cliente</button>
        </Link>
        <Link href="/dashboard">
          <button>Dashboard</button>
        </Link>
      </nav>
      <div id="output" className={tablaActual ? "show" : "hide"}>
        {tablaActual && (
          <Table
            data={datos}
            estadoField={tablaActual === "reservacion" ? "estado" : undefined}
          />
        )}
      </div>

      {showForm && (
        <div className="modal show">
          <ReservacionForm
            onSuccessAction={handleReservacionSuccessAction}
            onCancelAction={() => setShowForm(false)}
          />
        </div>
      )}
    </main>
  );
}
