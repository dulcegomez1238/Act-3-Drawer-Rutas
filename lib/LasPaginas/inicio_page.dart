import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F0), // Color rosita
      appBar: AppBar(
        title: const Text('Inicio - Florería Magui'),
        backgroundColor: const Color(0xFFFFB6C1),
        elevation: 0,
      ),
      drawer: _buildDrawer(context),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?ixlib=rb-1.2.1&auto=format&fit=crop&w=200&h=200&q=80'
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFFFF0F0), // Color rosita
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Encabezado del Drawer
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFFFB6C1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: const NetworkImage(
                          'https://images.unsplash.com/photo-1563241527-3004b7be0ffd?ixlib=rb-1.2.1&auto=format&fit=crop&w=60&h=60&q=80'
                        ),
                        backgroundColor: Colors.pink[100],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Florería Magui',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Av. Vicente Guerrero',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.phone, size: 16, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        '656 234 7633',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.email, size: 16, color: Colors.white),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          '@floreriaMaguigmail.com',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Opciones del Drawer
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFFFF69B4)),
              title: const Text(
                'Inicio',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.shopping_bag, color: Color(0xFFFF69B4)),
              title: const Text(
                'Productos',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/productos');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.people, color: Color(0xFFFF69B4)),
              title: const Text(
                'Empleados',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/empleados');
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFFFF69B4)),
              title: const Text(
                'Clientes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/clientes');
              },
            ),
          ],
        ),
      ),
    );
  }
}