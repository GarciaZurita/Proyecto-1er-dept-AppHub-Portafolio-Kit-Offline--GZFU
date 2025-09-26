import 'package:flutter/material.dart';

class Practica1 extends StatelessWidget {
  const Practica1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Práctica 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Hola Mundo desde la Práctica 1!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // 👈 Regresa al menú
              },
              child: const Text("Volver al Menú"),
            ),
          ],
        ),
      ),
    );
  }
}
