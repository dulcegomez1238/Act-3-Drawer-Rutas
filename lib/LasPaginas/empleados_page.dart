import 'package:flutter/material.dart';

class EmpleadosPage extends StatelessWidget {
  const EmpleadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F0),
      appBar: AppBar(
        title: const Text('Empleados - Florería Magui'),
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
                'https://private-user-images.githubusercontent.com/231079253/565324306-c00f22f3-ca63-430e-b971-80835ce04a2f.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzM4MTA4MzEsIm5iZiI6MTc3MzgxMDUzMSwicGF0aCI6Ii8yMzEwNzkyNTMvNTY1MzI0MzA2LWMwMGYyMmYzLWNhNjMtNDMwZS1iOTcxLTgwODM1Y2UwNGEyZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzE4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMxOFQwNTA4NTFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1mZDhiMmYzNmExZGVjMDYwYWM0ZTIzZDM2ODAxM2RmNWI0MDFkMTE5YjJjODkxZWVlOWVlOWQ0ZTYwNjI5YzliJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.LRhOHU88UJUyyWjD1jXsIXgPi0zXO9YsPYGaCokj9vU'
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
        color: const Color(0xFFFFF0F0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
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
                          'https://private-user-images.githubusercontent.com/231079253/565324306-c00f22f3-ca63-430e-b971-80835ce04a2f.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzM4MTA4MzEsIm5iZiI6MTc3MzgxMDUzMSwicGF0aCI6Ii8yMzEwNzkyNTMvNTY1MzI0MzA2LWMwMGYyMmYzLWNhNjMtNDMwZS1iOTcxLTgwODM1Y2UwNGEyZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzE4JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMxOFQwNTA4NTFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1mZDhiMmYzNmExZGVjMDYwYWM0ZTIzZDM2ODAxM2RmNWI0MDFkMTE5YjJjODkxZWVlOWVlOWQ0ZTYwNjI5YzliJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.LRhOHU88UJUyyWjD1jXsIXgPi0zXO9YsPYGaCokj9vU'
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
