import 'package:flutter/material.dart';
// Importa Flutter con todos los widgets de Material Design

import 'app_drawer.dart';
// Importa el menú lateral reutilizable (AppDrawer)

class Hub extends StatelessWidget {
  const Hub({super.key});
  // Widget principal de la pantalla Hub. Es Stateless porque no mantiene estado propio.

  @override
  Widget build(BuildContext context) {
    // Método que construye la interfaz del Hub

    Widget card(String title, String subtitle, IconData icon, String route) {
      // Función local que crea una tarjeta con estilo moderno y navegación
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        shadowColor: Colors.blueAccent.withOpacity(0.2),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.pushNamed(context, route),
          // Al presionar la tarjeta, navega a la ruta indicada
          child: SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(icon, size: 48, color: Colors.blueAccent),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text(subtitle, style: TextStyle(color: Colors.grey[700])),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hub - Kit Offline'),
        centerTitle: true,
        // Barra superior con título centrado
      ),
      drawer: const AppDrawer(),
      // Menú lateral
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            card('Prácticas', 'Ver índice de todas las prácticas', Icons.list_alt, '/practices'),
            card('Proyecto', 'Abrir Kit Offline (Notas, IMC, Galería, Par/Impar)', Icons.build_circle, '/project'),
            card('Ajustes', 'Tema, Acerca de', Icons.settings, '/settings'),
            const SizedBox(height: 20),
            const Text('Prácticas rápidas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            // Grid de botones rápidos para las prácticas P1..P4
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.5,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/p1'),
                  icon: const Icon(Icons.looks_one),
                  label: const Text('P1'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                ),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/p2'),
                  icon: const Icon(Icons.looks_two),
                  label: const Text('P2'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                ),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/p3'),
                  icon: const Icon(Icons.looks_3),
                  label: const Text('P3'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                ),
                ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/p4'),
                  icon: const Icon(Icons.looks_4),
                  label: const Text('P4'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
