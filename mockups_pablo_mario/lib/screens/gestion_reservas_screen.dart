import 'package:flutter/material.dart';
import 'package:mockups_pablo_mario/widgets/sidebar_widget.dart';

class RecursosScreen extends StatelessWidget {
  const RecursosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text("Recursos"),
        backgroundColor: const Color(0xFF2C3E50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 TÍTULO + BOTÓN
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Sidebar(), // 👈 MISMA SIDEBAR
                const Text(
                  "Gestión de Recursos",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Añadir recurso"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔹 BUSCADOR
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar recurso...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 TABLA
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text("Nombre")),
                    DataColumn(label: Text("Tipo")),
                    DataColumn(label: Text("Ubicación")),
                    DataColumn(label: Text("Estado")),
                    DataColumn(label: Text("Acciones")),
                  ],
                  rows: [
                    _fila("Aula 1", "Aula", "Planta 1", "Libre"),
                    _fila("Proyector 3", "Equipo", "Almacén", "Ocupado"),
                    _fila("Carrito Portátil", "Equipo", "Planta 2", "Libre"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 FILA MOCK
  DataRow _fila(
    String nombre,
    String tipo,
    String ubicacion,
    String estado,
  ) {
    return DataRow(
      cells: [
        DataCell(Text(nombre)),
        DataCell(Text(tipo)),
        DataCell(Text(ubicacion)),
        DataCell(
          Text(
            estado,
            style: TextStyle(
              color: estado == "Libre" ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataCell(
          Row(
            children: const [
              Icon(Icons.edit, size: 18, color: Colors.blue),
              SizedBox(width: 12),
              Icon(Icons.delete, size: 18, color: Colors.red),
            ],
          ),
        ),
      ],
    );
  }
}
