"use client";
import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import { Table } from "./components/Table";
import { ReservacionForm } from "./components/ReservacionForm";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

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

// Interfaz para los datos del reporte que esperamos de la API
interface IngresosReportData {
  year: number;
  month: number;
  sum: string;
}

export default function HomePage() {
  const router = useRouter();
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isLoadingAuth, setIsLoadingAuth] = useState(true);

  const [tablaActual, setTablaActual] = useState<string | null>(null);
  const [datos, setDatos] = useState<TableRow[]>([]);
  const [showForm, setShowForm] = useState(false);

  // Estado para el reporte de ingresos
  const [reportYear, setReportYear] = useState<string>(
    new Date().getFullYear().toString(),
  );
  const [reportMonth, setReportMonth] = useState<string>(
    (new Date().getMonth() + 1).toString().padStart(2, "0"),
  );
  const [ingresosReport, setIngresosReport] =
    useState<IngresosReportData | null>(null);
  const [reportLoading, setReportLoading] = useState(false);
  const [reportError, setReportError] = useState<string | null>(null);

  useEffect(() => {
    const authStatus = localStorage.getItem("isAdminAuthenticated");
    if (authStatus === "true") {
      setIsAuthenticated(true);
    } else {
      router.replace("/admin/login"); // Redirigir si no está autenticado
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
    setIsAuthenticated(false); // Actualizar estado
    router.push("/admin/login"); // Redirigir al login
  };

  // Función para obtener el reporte de ingresos
  const handleFetchIngresosReport = async () => {
    setReportLoading(true);
    setReportError(null);
    setIngresosReport(null); // Limpiar reporte anterior
    try {
      const response = await fetch(
        `/api/reports/ingresosPorMes?year=${reportYear}&month=${reportMonth}`,
      );
      const result = await response.json();

      if (response.ok && result.success) {
        if (result.data) {
          setIngresosReport(result.data);
        } else {
          setReportError(
            result.message ||
              "No se encontraron datos de ingresos para el período seleccionado.",
          );
        }
      } else {
        setReportError(
          result.error || "Error al obtener el reporte de ingresos.",
        );
      }
    } catch (err) {
      setReportError(
        "Ocurrió un error al obtener el reporte. Revisa la consola para más detalles.",
      );
      console.error("Error al obtener reporte de ingresos:", err);
    }
    setReportLoading(false);
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
        <p style={{ color: "#272822", fontSize: "1.2rem" }}>Cargando...</p>
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
          Redirigiendo al inicio de sesión...
        </p>
      </div>
    );
  }

  // Si está autenticado, mostrar el contenido de la página
  return (
    <main className="p-4">
      <nav className="flex flex-wrap justify-between items-center mb-6 pb-4 border-b">
        <div className="flex flex-wrap gap-2 mb-2 md:mb-0">
          {tablas.map((tabla) => (
            <Button
              key={tabla}
              variant="outline"
              onClick={() => fetchTabla(tabla)}
            >
              {tabla.charAt(0).toUpperCase() + tabla.slice(1)}
            </Button>
          ))}
          <Button variant="outline" onClick={() => setShowForm(true)}>
            Nueva Reservación
          </Button>
          <Link href="/cliente/nuevo">
            <Button variant="outline">Nuevo Cliente</Button>
          </Link>
        </div>
        <Button variant="ghost" onClick={handleLogout}>
          Cerrar Sesión
        </Button>
      </nav>

      {/* Sección para Reporte de Ingresos */}
      <section className="my-8 p-6 bg-card text-card-foreground rounded-xl border shadow-sm">
        <h2 className="text-2xl font-semibold mb-4">
          Reporte de Ingresos Mensuales
        </h2>
        <div className="flex flex-wrap gap-4 mb-4 items-end">
          <div>
            <Label htmlFor="reportYear" className="mb-1 block">
              Año
            </Label>
            <Input
              id="reportYear"
              type="number"
              value={reportYear}
              onChange={(e) => setReportYear(e.target.value)}
              placeholder="AAAA"
              className="w-36"
            />
          </div>
          <div>
            <Label htmlFor="reportMonth" className="mb-1 block">
              Mes
            </Label>
            <Input
              id="reportMonth"
              type="number"
              value={reportMonth}
              onChange={(e) => setReportMonth(e.target.value)}
              placeholder="MM"
              min="1"
              max="12"
              className="w-28"
            />
          </div>
          <Button
            onClick={handleFetchIngresosReport}
            disabled={reportLoading}
            className="self-end"
          >
            {reportLoading ? "Generando..." : "Obtener Reporte"}
          </Button>
        </div>
        {reportError && (
          <p className="text-sm text-red-600 mb-3">{reportError}</p>
        )}
        {ingresosReport && (
          <div className="p-4 bg-muted text-muted-foreground rounded-lg">
            <h3 className="text-lg font-medium mb-2">
              Reporte para {ingresosReport.month}/{ingresosReport.year}
            </h3>
            <p className="text-lg">
              <strong>Ingresos Totales:</strong>
              <span className="font-bold text-primary ml-2">
                ${parseFloat(ingresosReport.sum).toFixed(2)}
              </span>
            </p>
          </div>
        )}
      </section>

      {/* El ID 'output' y las clases 'show'/'hide' parecen ser de un estilo anterior. */}
      {/* Considera usar clases de Tailwind para la visibilidad si es posible para consistencia. */}
      <div
        id="output"
        className={
          tablaActual
            ? "opacity-100 max-h-[1000px]"
            : "opacity-0 max-h-0 overflow-hidden transition-all duration-500 ease-in-out"
        }
      >
        {tablaActual && (
          <Table // Asumo que Table.tsx muestra los encabezados tal como vienen de la API
            data={datos}
            estadoField={tablaActual === "reservacion" ? "estado" : undefined}
          />
        )}
      </div>

      {showForm && (
        // Modal para el formulario de reservación
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
          <div className="bg-card p-6 rounded-lg shadow-xl w-full max-w-lg">
            {/* ReservacionForm será traducido en su propio archivo */}
            <ReservacionForm
              onSuccessAction={handleReservacionSuccessAction}
              onCancelAction={() => setShowForm(false)}
            />
          </div>
        </div>
      )}
    </main>
  );
}
