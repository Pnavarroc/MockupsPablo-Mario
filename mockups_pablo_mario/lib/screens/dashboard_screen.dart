import 'package:flutter/material.dart';
import 'package:mockups_pablo_mario/widgets/dashboard_hearder_widget.dart';
import 'package:mockups_pablo_mario/widgets/section_card.dart';
import 'package:mockups_pablo_mario/widgets/sidebar_widget.dart';
import 'package:mockups_pablo_mario/widgets/stats_grid_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool esGrande = width > 1200;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: Row(
        children: [
          Sidebar(), // 🔑 quitamos const por seguridad
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ListView(
                children: [
                  const DashboardHeader(),
                  const SizedBox(height: 30),

                  StatsGrid(columnas: esGrande ? 4 : 2),

                  const SizedBox(height: 30),

                  SectionCard( // 🔑 SIN const
                    titulo: "Reservas de Hoy",
                    child: SizedBox(
                      height: 180,
                      child: Center(
                        child: Text("Tabla de reservas"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
