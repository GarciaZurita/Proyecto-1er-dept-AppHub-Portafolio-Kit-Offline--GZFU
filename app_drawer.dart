import 'package:flutter/material.dart'; 
// Importa Flutter con todos los widgets de Material Design

class AppDrawer extends StatelessWidget {
  // Widget inmutable (StatelessWidget) para el menú lateral (Drawer)
  const AppDrawer({super.key});
  // Constructor constante para optimizaciones y recibe opcionalmente una 'key'

  @override
  Widget build(BuildContext context) {
    // Método obligatorio de cualquier StatelessWidget donde se construye la UI

    Widget nav(String route, String title, IconData icon) {
      // Función local para crear un ListTile de navegación
      // Parámetros:
      // route -> ruta a la que navega
      // title -> texto que se muestra
      // icon -> ícono que se muestra a la izquierda

      return ListTile(
        leading: Icon(icon), 
        // Ícono que aparece al inicio de la fila
        title: Text(title), 
        // Texto que se muestra en el ListTile
        onTap: () {
          Navigator.pop(context); 
          // Cierra el Drawer al presionar el ListTile
          Navigator.pushNamed(context, route); 
          // Navega a la ruta indicada usando rutas nombradas
        },
      );
    }

    return Drawer(
      // Widget que representa el menú lateral deslizable
      child: ListView(
        // ListView permite desplazamiento vertical si hay muchos items
        padding: EdgeInsets.zero, 
        // Elimina el padding por defecto del ListView
        children: [
          DrawerHeader(
            // Encabezado del Drawer, normalmente con info de la app
            decoration: const BoxDecoration(color: Colors.blue), 
            // Fondo azul del header
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              // Alinea los elementos a la izquierda
              children: const [
                Text(
                  'Kit Offline', 
                  style: TextStyle(color: Colors.white, fontSize: 20)
                ),
                // Título principal del Drawer
                SizedBox(height: 8), 
                // Espaciado vertical entre textos
                Text(
                  'Portafolio / Proyecto', 
                  style: TextStyle(color: Colors.white70)
                ),
                // Subtítulo con color más tenue
              ],
            ),
          ),
          // Ahora se agregan los elementos de navegación usando la función nav
          nav('/', 'Inicio (Hub)', Icons.home),
          // ListTile que navega a la pantalla principal (Hub)
          nav('/practices', 'Prácticas (P1…Pn)', Icons.list),
          // ListTile que navega al índice de prácticas
          nav('/project', 'Proyecto: Kit Offline', Icons.build_circle),
          // ListTile que navega al proyecto Kit Offline
          nav('/settings', 'Ajustes / Acerca de', Icons.settings),
          // ListTile que navega a la pantalla de ajustes/acerca de
        ],
      ),
    );
  }
}
