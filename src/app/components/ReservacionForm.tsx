"use client";
import React, { useState } from "react";

interface Props {
  onSuccessAction: () => void;
  onCancelAction: () => void;
}

export const ReservacionForm: React.FC<Props> = ({
  onSuccessAction,
  onCancelAction,
}) => {
  const [form, setForm] = useState({
    cliente_id: "",
    habitacion_id: "",
    fecha_inicio: "",
    fecha_fin: "",
  });
  const [loading, setLoading] = useState(false);

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    const res = await fetch("/api/reservacion", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });
    setLoading(false);
    if (res.ok) {
      onSuccessAction();
    } else {
      alert("Error al crear la reservación");
    }
  };

  return (
    <form onSubmit={handleSubmit} className="modal-form">
      <label>
        Cliente ID:{" "}
        <input
          name="cliente_id"
          required
          value={form.cliente_id}
          onChange={handleChange}
        />
      </label>
      <label>
        Habitación ID:{" "}
        <input
          name="habitacion_id"
          required
          value={form.habitacion_id}
          onChange={handleChange}
        />
      </label>
      <label>
        Check In:{" "}
        <input
          type="date"
          name="fecha_inicio"
          required
          value={form.fecha_inicio}
          onChange={handleChange}
        />
      </label>
      <label>
        Check Out:{" "}
        <input
          type="date"
          name="fecha_fin"
          required
          value={form.fecha_fin}
          onChange={handleChange}
        />
      </label>
      <button type="submit" disabled={loading}>
        {loading ? "Guardando..." : "Reservar"}
      </button>
      <button type="button" onClick={onCancelAction}>
        Cancelar
      </button>
    </form>
  );
};
