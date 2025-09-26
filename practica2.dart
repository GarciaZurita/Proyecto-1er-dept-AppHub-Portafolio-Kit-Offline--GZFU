import 'package:flutter/material.dart';

class Practica2 extends StatefulWidget {
  const Practica2({super.key});

  @override
  State<Practica2> createState() => _Practica2State();
}

class _Practica2State extends State<Practica2> {
  bool mostrarTextos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Práctica 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mostrarTextos = true;
                });
              },
              child: const Text("Presióname"),
            ),
            const SizedBox(height: 20),
            if (mostrarTextos)
              Column(
                children: List.generate(
                  10,
                  (index) => const Text(
                    "Hola Mundo",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
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
