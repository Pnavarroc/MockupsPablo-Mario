import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Dashboard",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            SizedBox(
              width: 260,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar...",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("AD"),
            ),
          ],
        ),
      ],
    );
  }
}
