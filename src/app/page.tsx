"use client";
import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import { Table } from "./components/Table";
import { ReservacionForm } from "./components/ReservacionForm";
import Link from "next/link";
import { Button } from "@/components/ui/button";

console.log("HomePage cargado");

const tablas = [
  "cliente",
  "vips",
  "habitacion",
  "reservacion",
  "factura",
  "pago",
  "servicio",
  "feedback",
];

type TableRow = Record<string, unknown>;

export default function HomePage() {
  const router = useRouter();
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isLoadingAuth, setIsLoadingAuth] = useState(true);

  const [tablaActual, setTablaActual] = useState<string | null>(null);
  const [datos, setDatos] = useState<TableRow[]>([]);
  const [showForm, setShowForm] = useState(false);

  useEffect(() => {
    const authStatus = localStorage.getItem("isAdminAuthenticated");
    if (authStatus === "true") {
      setIsAuthenticated(true);
    } else {
      router.replace("/admin/login");
    }
    setIsLoadingAuth(false);
  }, [router]);

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

    if (tablaActual === "reservacion") {
      fetchTabla("reservacion");
    }
  }

  const handleLogout = () => {
    localStorage.removeItem("isAdminAuthenticated");
    setIsAuthenticated(false);
    router.push("/admin/login");
  };

  if (isLoadingAuth) {
    return (
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          height: "100vh",
          backgroundColor: "#dfbfbe",
        }}
      >
        <p style={{ color: "#272822", fontSize: "1.2rem" }}>Loading...</p>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          height: "100vh",
          backgroundColor: "#dfbfbe",
        }}
      >
        <p style={{ color: "#272822", fontSize: "1.2rem" }}>
          Redirecting to login...
        </p>
      </div>
    );
  }

  return (
    <main>
      <nav
        style={{
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center",
        }}
      >
        {" "}
        {/* Added style for layout */}
        <div>
          {" "}
          {/* Group for table buttons */}
          {tablas.map((tabla) => (
            <button
              key={tabla}
              onClick={() => fetchTabla(tabla)}
              className="mr-2"
            >
              {" "}
              {/* Added margin for spacing */}
              {tabla.charAt(0).toUpperCase() + tabla.slice(1)}
            </button>
          ))}
          <button onClick={() => setShowForm(true)} className="mr-2">
            Nueva Reservación
          </button>
          <Link href="/cliente/nuevo">
            <button className="mr-2">Nuevo Cliente</button>
          </Link>
        </div>
        <Button variant="outline" onClick={handleLogout}>
          Logout
        </Button>{" "}
        {/* Logout Button */}
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
