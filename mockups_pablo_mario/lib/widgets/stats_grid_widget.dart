import 'package:flutter/material.dart';
import 'stat_card.dart';

class StatsGrid extends StatelessWidget {
  final int columnas;
  const StatsGrid({super.key, required this.columnas});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: columnas,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        StatCard("48", "Total Recursos"),
        StatCard("127", "Reservas Activas"),
        StatCard("8", "Incidencias Abiertas"),
        StatCard("124", "Docentes Activos"),
      ],
    );
  }
}
