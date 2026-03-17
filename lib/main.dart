import 'package:flutter/material.dart';
import 'LasPaginas/productos_page.dart';
import 'LasPaginas/empleados_page.dart';
import 'LasPaginas/clientes_page.dart';
import 'LasPaginas/inicio_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florería Magui',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(),
        '/productos': (context) => const ProductosPage(),
        '/empleados': (context) => const EmpleadosPage(),
        '/clientes': (context) => const ClientesPage(),
      },
    );
  }
}