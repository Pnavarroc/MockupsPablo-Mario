import 'package:flutter/material.dart';
import 'package:mockups_pablo_mario/screens/gestion_recursos_screen.dart';
import 'package:mockups_pablo_mario/screens/gestion_usuarios_screen.dart';
import '../screens/dashboard_screen.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: const Color(0xFF2C3E50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "IES Recursos",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 30),

          // DASHBOARD
          _item(context, "Dashboard", const DashboardScreen()),

          const SizedBox(height: 20),

          // SECCIÓN GESTIÓN
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "GESTIÓN",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
                letterSpacing: 1,
              ),
            ),
          ),

          const SizedBox(height: 10),

          _item(context, "Gestión de Recursos", const RecursosScreen()),
          _item(context, "Gestión de Reservas", const RecursosScreen()),
          _item(context, "Gestión de Usuarios", const UsuariosScreen()),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, String text, Widget screen) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => screen),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}