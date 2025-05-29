"use client";
import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import { Table } from "./components/Table";
import { ReservacionForm } from "./components/ReservacionForm";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select"; // Asegúrate de que esta importación sea correcta

// Nombres de las tablas
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

// Interfaz para los datos del reporte de ingresos
interface IngresosReportData {
  year: number;
  month: number;
  sum: string;
}

// Constante para niveles VIP (valores deben coincidir con el ENUM de la BD)
const NIVELES_VIP_BD = [
  { value: "silver", label: "Silver (Plata)" },
  { value: "gold", label: "Gold (Oro)" },
  { value: "platinum", label: "Platinum (Platino)" },
  // Añade más objetos aquí si tu ENUM en la BD tiene más opciones
  // Ejemplo: { value: 'bronze', label: 'Bronze (Bronce)' },
];

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

  // Estado para Marcar Cliente como VIP
  const [vipClienteIdInput, setVipClienteIdInput] = useState<string>("");
  const [vipNivelSeleccionado, setVipNivelSeleccionado] = useState<string>(
    NIVELES_VIP_BD[0].value,
  ); // Default al primer 'value'
  const [marcarVipLoading, setMarcarVipLoading] = useState(false);
  const [marcarVipMessage, setMarcarVipMessage] = useState<string | null>(null);

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
    setMarcarVipMessage(null);
    setReportError(null);
    setIngresosReport(null);

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

  const handleFetchIngresosReport = async () => {
    setReportLoading(true);
    setReportError(null);
    setIngresosReport(null);
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
          result.details ||
            result.error ||
            "Error al obtener el reporte de ingresos.",
        );
      }
    } catch (err) {
      setReportError(
        "Ocurrió un error de red al obtener el reporte. Revisa la consola.",
      );
      console.error("Error al obtener reporte de ingresos:", err);
    }
    setReportLoading(false);
  };

  const handleMarcarClienteVIP = async () => {
    if (!vipClienteIdInput.trim()) {
      setMarcarVipMessage("Por favor, ingrese un ID de cliente.");
      return;
    }
    const clienteIdNum = parseInt(vipClienteIdInput, 10);
    if (isNaN(clienteIdNum)) {
      setMarcarVipMessage("El ID de cliente debe ser un número válido.");
      return;
    }
    if (!vipNivelSeleccionado) {
      setMarcarVipMessage("Por favor, seleccione un nivel VIP.");
      return;
    }

    setMarcarVipLoading(true);
    setMarcarVipMessage(null);
    try {
      const response = await fetch("/api/vip/asignarUpgrade", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          cliente_id: clienteIdNum,
          nivel_vip: vipNivelSeleccionado, // Se envía el 'value' (ej: 'silver')
        }),
      });
      const result = await response.json();

      if (response.ok && result.success) {
        setMarcarVipMessage(
          result.message || "Cliente marcado como VIP exitosamente.",
        );
        setVipClienteIdInput("");
        if (tablaActual === "vips") {
          fetchTabla("vips");
        }
      } else {
        setMarcarVipMessage(
          `Error: ${result.details || result.error || "No se pudo marcar al cliente como VIP."}`,
        );
      }
    } catch (err) {
      setMarcarVipMessage(
        "Ocurrió un error de red al marcar VIP. Revisa la consola.",
      );
      console.error("Error al marcar VIP:", err);
    }
    setMarcarVipLoading(false);
  };

  if (isLoadingAuth) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-[#dfbfbe]">
        <p className="text-[#272822] text-xl">Cargando...</p>
      </div>
    );
  }

  if (!isAuthenticated) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-[#dfbfbe]">
        <p className="text-[#272822] text-xl">
          Redirigiendo al inicio de sesión...
        </p>
      </div>
    );
  }

  return (
    <main className="p-4 md:p-6 lg:p-8 bg-background text-foreground min-h-screen">
      <nav className="flex flex-col md:flex-row flex-wrap justify-between items-center mb-6 pb-4 border-b border-border">
        <div className="flex flex-wrap gap-2 mb-4 md:mb-0">
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
        <h2 className="text-2xl font-semibold mb-6 text-primary">
          Reporte de Ingresos Mensuales
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4 items-end">
          <div className="flex flex-col">
            <Label htmlFor="reportYear" className="mb-1 text-sm font-medium">
              Año
            </Label>
            <Input
              id="reportYear"
              type="number"
              value={reportYear}
              onChange={(e) => setReportYear(e.target.value)}
              placeholder="AAAA"
            />
          </div>
          <div className="flex flex-col">
            <Label htmlFor="reportMonth" className="mb-1 text-sm font-medium">
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
            />
          </div>
          <Button
            onClick={handleFetchIngresosReport}
            disabled={reportLoading}
            className="md:mt-auto"
          >
            {reportLoading ? "Generando..." : "Obtener Reporte"}
          </Button>
        </div>
        {reportError && (
          <p className="mt-3 text-sm text-destructive">{reportError}</p>
        )}
        {ingresosReport && (
          <div className="mt-4 p-4 bg-muted text-muted-foreground rounded-lg">
            <h3 className="text-lg font-medium mb-2 text-foreground">
              Reporte para {ingresosReport.month}/{ingresosReport.year}
            </h3>
            <p className="text-lg">
              <strong className="text-foreground">Ingresos Totales:</strong>
              <span className="font-bold text-primary ml-2">
                $
                {!isNaN(parseFloat(ingresosReport.sum))
                  ? parseFloat(ingresosReport.sum).toFixed(2)
                  : "0.00"}
              </span>
            </p>
          </div>
        )}
      </section>

      {/* Sección para Marcar Cliente como VIP */}
      <section className="my-8 p-6 bg-card text-card-foreground rounded-xl border shadow-sm">
        <h2 className="text-2xl font-semibold mb-6 text-primary">
          Marcar Cliente como VIP
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4 items-end">
          <div className="flex flex-col">
            <Label
              htmlFor="vipClienteIdInput"
              className="mb-1 text-sm font-medium"
            >
              ID Cliente
            </Label>
            <Input
              id="vipClienteIdInput"
              type="text"
              value={vipClienteIdInput}
              onChange={(e) => setVipClienteIdInput(e.target.value)}
              placeholder="Ingrese ID del cliente"
            />
          </div>
          <div className="flex flex-col">
            <Label
              htmlFor="vipNivelSeleccionado"
              className="mb-1 text-sm font-medium"
            >
              Nivel VIP
            </Label>
            <Select
              value={vipNivelSeleccionado}
              onValueChange={setVipNivelSeleccionado}
            >
              <SelectTrigger>
                <SelectValue placeholder="Seleccione nivel" />
              </SelectTrigger>
              <SelectContent>
                {NIVELES_VIP_BD.map((nivel) => (
                  <SelectItem key={nivel.value} value={nivel.value}>
                    {nivel.label}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
          <Button
            onClick={handleMarcarClienteVIP}
            disabled={marcarVipLoading}
            className="md:mt-auto"
          >
            {marcarVipLoading ? "Procesando..." : "Marcar como VIP"}
          </Button>
        </div>
        {marcarVipMessage && (
          <p
            className={`mt-3 text-sm ${marcarVipMessage.toLowerCase().includes("error") || marcarVipMessage.toLowerCase().startsWith("por favor") ? "text-destructive" : "text-green-600"}`}
          >
            {marcarVipMessage}
          </p>
        )}
      </section>

      {/* Sección para mostrar tablas */}
      <div
        id="output"
        className={`transition-all duration-500 ease-in-out ${tablaActual ? "opacity-100 max-h-[2000px] mt-8" : "opacity-0 max-h-0"}`}
      >
        {tablaActual && (
          <Table
            data={datos}
            estadoField={tablaActual === "reservacion" ? "estado" : undefined}
          />
        )}
      </div>

      {/* Modal para el formulario de reservación */}
      {showForm && (
        <div className="fixed inset-0 bg-black/60 flex items-center justify-center z-50 p-4">
          <div className="bg-card p-6 md:p-8 rounded-lg shadow-xl w-full max-w-lg">
            <h3 className="text-xl font-semibold mb-4 text-primary">
              Nueva Reservación
            </h3>
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
