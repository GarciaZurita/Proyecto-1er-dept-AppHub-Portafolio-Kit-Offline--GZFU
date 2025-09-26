import 'dart:math';
import 'package:flutter/material.dart';
import 'practica1.dart';
import 'practica2.dart';
import 'practica3.dart';
import 'practica4.dart';

class Practica5 extends StatefulWidget {
  const Practica5({super.key});

  @override
  State<Practica5> createState() => _Practica5State();
}

class _Practica5State extends State<Practica5> {
  final List<String> _opciones = ["Piedra", "Papel", "Tijera"];
  String _eleccionUsuario = "";
  String _eleccionApp = "";
  String _resultado = "";
  int _puntosUsuario = 0;
  int _puntosApp = 0;

  void _jugar(String usuario) {
    final random = Random();
    final app = _opciones[random.nextInt(3)];

    setState(() {
      _eleccionUsuario = usuario;
      _eleccionApp = app;

      if (usuario == app) {
        _resultado = "Empate 😐";
      } else if ((usuario == "Piedra" && app == "Tijera") ||
          (usuario == "Papel" && app == "Piedra") ||
          (usuario == "Tijera" && app == "Papel")) {
        _resultado = "¡Ganaste! 🎉";
        _puntosUsuario++;
      } else {
        _resultado = "Perdiste 😢";
        _puntosApp++;
      }
    });
  }

  void _reiniciar() {
    setState(() {
      _eleccionUsuario = "";
      _eleccionApp = "";
      _resultado = "";
      _puntosUsuario = 0;
      _puntosApp = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Práctica 5 - Drawer & Juego"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), // ☰
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menú de Prácticas",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Índice de Prácticas"),
              onTap: () {
                Navigator.pushNamed(context, '/practices');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.looks_one),
              title: const Text("Práctica 1"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Practica1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_two),
              title: const Text("Práctica 2"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Practica2()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_3),
              title: const Text("Práctica 3"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Practica3()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.looks_4),
              title: const Text("Práctica 4"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Practica4()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.sports_esports),
              title: const Text("Juego: Piedra, Papel o Tijera"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Elige tu jugada:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _opciones.map((opcion) {
                return ElevatedButton(
                  onPressed: () => _jugar(opcion),
                  child: Text(opcion),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            if (_eleccionUsuario.isNotEmpty) ...[
              Text("Tú elegiste: $_eleccionUsuario",
                  style: const TextStyle(fontSize: 18)),
              Text("App eligió: $_eleccionApp",
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text(_resultado,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text("Marcador:", style: const TextStyle(fontSize: 18)),
              Text("Usuario $_puntosUsuario - $_puntosApp App",
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: _reiniciar,
                child: const Text("Reiniciar marcador"),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
