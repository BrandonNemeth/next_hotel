import React from "react";
import {
  Table as ShadTable,
  TableHeader,
  TableBody,
  TableRow,
  TableHead,
  TableCell,
} from "@/components/ui/table";

type TableRowType = Record<string, unknown>;

interface TableProps {
  data: TableRowType[];
  estadoField?: string;
}

export const Table: React.FC<TableProps> = ({ data, estadoField }) => {
  if (!Array.isArray(data) || data.length === 0) {
    return <p>No hay datos para mostrar.</p>;
  }

  const keys = Object.keys(data[0]);

  return (
    <ShadTable>
      <TableHeader>
        <TableRow>
          {keys.map((key) => (
            <TableHead key={key}>{key}</TableHead>
          ))}
        </TableRow>
      </TableHeader>
      <TableBody>
        {data.map((item, idx) => (
          <TableRow key={idx}>
            {keys.map((key) => (
              <TableCell
                key={key}
                className={
                  estadoField && key.toLowerCase().includes(estadoField)
                    ? String(item[key]).toLowerCase() === "disponible"
                      ? "text-green-600 font-bold"
                      : "text-red-600 font-bold"
                    : ""
                }
              >
                {String(item[key])}
              </TableCell>
            ))}
          </TableRow>
        ))}
      </TableBody>
    </ShadTable>
  );
};
