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
                'https://private-user-images.githubusercontent.com/231079253/563042274-8427b22f-f277-4c7a-ad70-9174c0568029.PNG?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzM3NjgwNDIsIm5iZiI6MTc3Mzc2Nzc0MiwicGF0aCI6Ii8yMzEwNzkyNTMvNTYzMDQyMjc0LTg0MjdiMjJmLWYyNzctNGM3YS1hZDcwLTkxNzRjMDU2ODAyOS5QTkc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzE3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMxN1QxNzE1NDJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jZjk0YTgwYmZjYWI1ZjNkYWExN2NmZTk4OTk2YjhkOTdjMGY1OTlhN2I1YjBmMTAyMGUzODZjNDM5ZWRiMjFjJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.IS2aFxsXmzwN0JGerHKOVRjvbS2s-5oGFKMnF7tSQjg'
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
                          'https://private-user-images.githubusercontent.com/231079253/563042274-8427b22f-f277-4c7a-ad70-9174c0568029.PNG?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzM3NjgwNDIsIm5iZiI6MTc3Mzc2Nzc0MiwicGF0aCI6Ii8yMzEwNzkyNTMvNTYzMDQyMjc0LTg0MjdiMjJmLWYyNzctNGM3YS1hZDcwLTkxNzRjMDU2ODAyOS5QTkc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzE3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMxN1QxNzE1NDJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jZjk0YTgwYmZjYWI1ZjNkYWExN2NmZTk4OTk2YjhkOTdjMGY1OTlhN2I1YjBmMTAyMGUzODZjNDM5ZWRiMjFjJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.IS2aFxsXmzwN0JGerHKOVRjvbS2s-5oGFKMnF7tSQjg'
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
