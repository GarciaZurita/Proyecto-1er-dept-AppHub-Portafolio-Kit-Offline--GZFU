import 'package:flutter/material.dart';
// Importa Flutter con widgets de Material Design

import 'app_drawer.dart';
// Importa el menú lateral reutilizable (AppDrawer)

class PracticesIndex extends StatelessWidget {
  const PracticesIndex({super.key});
  // Pantalla inmutable (StatelessWidget) que muestra el índice de prácticas

  @override
  Widget build(BuildContext context) {
    // Lista de prácticas con título y ruta
    final items = [
      {'title': 'Práctica 1 - Hola Mundo', 'route': '/p1'},
      {'title': 'Práctica 2 - Botón 10 Hola Mundo', 'route': '/p2'},
      {'title': 'Práctica 3 - Menú', 'route': '/p3'},
      {'title': 'Práctica 4 - Form Registro', 'route': '/p4'},
      {'title': 'Práctica 5 - Drawer + RPS', 'route': '/p5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Índice de Prácticas'),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      // Menú lateral global

      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        // Separa los elementos con un espacio vertical de 12px
        itemBuilder: (context, i) {
          final it = items[i];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(
                  'P${i + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              // Círculo con el número de la práctica
              title: Text(it['title']!),
              // Título de la práctica
              trailing: const Icon(Icons.chevron_right),
              // Ícono de flecha indicando navegación
              onTap: () => Navigator.pushNamed(context, it['route']!),
              // Al presionar, navega a la ruta de la práctica
            ),
          );
        },
      ),
    );
  }
}
