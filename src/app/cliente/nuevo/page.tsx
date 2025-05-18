"use client";
import { useState } from "react";
import { useRouter } from "next/navigation";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";

export default function NuevoClientePage() {
  const router = useRouter();
  const [form, setForm] = useState({
    tipo_cliente: "",
    direccion: "",
    telefono_celular: "",
    RFC: "",
    email: "",
    pais_procedencia: "",
    num_reservaciones: 0,
    fecha_alta: "",
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleTipoClienteChange = (value: string) => {
    setForm({ ...form, tipo_cliente: value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    const res = await fetch("/api/cliente", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });
    if (res.ok) {
      router.push("/");
    } else {
      alert("Error al crear el cliente");
    }
  };

  const handleBack = () => {
    router.push("/");
  };

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-[#dfbfbe] to-[#f8f8f2]">
      <Card className="w-full max-w-md shadow-xl">
        <CardHeader>
          <Button variant="ghost" className="mb-2" onClick={handleBack}>
            ← Volver
          </Button>
          <CardTitle>Nuevo Cliente</CardTitle>
        </CardHeader>
        <CardContent>
          <form className="space-y-4" onSubmit={handleSubmit}>
            <div>
              <Label>Tipo Cliente</Label>
              <Select
                value={form.tipo_cliente}
                onValueChange={handleTipoClienteChange}
              >
                <SelectTrigger>
                  <SelectValue placeholder="Seleccione" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="fisica">Física</SelectItem>
                  <SelectItem value="moral">Moral</SelectItem>
                </SelectContent>
              </Select>
            </div>
            <div>
              <Label>Dirección</Label>
              <Input
                name="direccion"
                value={form.direccion}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>Teléfono Celular</Label>
              <Input
                name="telefono_celular"
                value={form.telefono_celular}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>RFC</Label>
              <Input
                name="RFC"
                value={form.RFC}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>Email</Label>
              <Input
                name="email"
                type="email"
                value={form.email}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>País Procedencia</Label>
              <Input
                name="pais_procedencia"
                value={form.pais_procedencia}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>Número Reservaciones</Label>
              <Input
                name="num_reservaciones"
                type="number"
                value={form.num_reservaciones}
                onChange={handleChange}
                required
              />
            </div>
            <div>
              <Label>Fecha Alta</Label>
              <Input
                name="fecha_alta"
                type="date"
                value={form.fecha_alta}
                onChange={handleChange}
                required
              />
            </div>
            <Button type="submit" className="w-full mt-4">
              Crear Cliente
            </Button>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}
