PRACTICAS COMPLETAS + AppHub Portafolio + Kit Offline

El repositorio contiene todas las prácticas realizadas durante el 1er parcial junto con el proyecto final. La aplicación centraliza todas las prácticas y contiene el Kit Offline con cuatro módulos: Notas rápidas, Calculadora de IMC, Galería local y Juego Par o Impar. Todo el estado se maneja en memoria, sin consumo de APIs ni persistencia externa. La app incluye navegación centralizada, tema claro/oscuro y retroalimentación visual mediante SnackBars y Dialogs.

Funcionalidades principales

Hub Principal (Dashboard)
Tarjetas hacia:

Índice de Prácticas

Kit Offline (índice de los 4 módulos)

Ajustes (tema / Acerca de)

El Drawer es accesible en todas las pantallas, permitiendo una navegación consistente.

Kit Offline

Notas rápidas: lista en memoria, FAB para agregar, botón borrar todo, SnackBar al agregar o borrar.

Calculadora IMC: Form con validación de campos, cálculo de IMC con categoría, botón para limpiar campos.

Galería local: GridView de imágenes en /assets/images/, AlertDialog para vista ampliada.

Juego Par o Impar: usuario vs CPU, marcador, SnackBar con resultado de cada ronda, botón para reiniciar marcador.

Tema
Cambio de tema claro/oscuro en memoria mediante SwitchListTile, aplicado a toda la interfaz (cajas, fondos, textos, cards).

Estructura del proyecto
/Practicas
  /practica1.dart
  /practica2.dart
  /practica3.dart
  /practica4.dart
  /practica5.dart
/lib
  main.dart
  ajustes.dart
  app_data.dart
  kit_index.dart
  practicas_index.dart
/kitoffline
  gallery.dart
  imc.dart
  notas.dart
  par_impar.dart
/assets/images
  OnePiece1.png
  OnePiece2.png
  OnePiece3.png
README.md

Cómo ejecutar el proyecto

Clona el repositorio:
git clone https://github.com/Phoowen/Proyecto1Parcial.git

Navega al directorio del proyecto:
cd flutter_application_4_copia

Abre el archivo lib/main.dart en tu editor de código preferido.

Asegúrate de tener Flutter instalado y un emulador o dispositivo listo.

Ejecuta la app con:
flutter run

Tecnologías utilizadas

Flutter: framework para desarrollo de aplicaciones multiplataforma.

Dart: lenguaje de programación principal.

Widgets nativos de Flutter: ListView, GridView, Card, SnackBar, Dialog, Form, TextFormField, ElevatedButton, OutlinedButton, SwitchListTile.


Garcia Zurita Fernando Uriel