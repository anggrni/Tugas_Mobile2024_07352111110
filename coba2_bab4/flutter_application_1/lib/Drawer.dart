import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Drawer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DrawerExample(),
    );
  }
}

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Drawer'),
      ),
      body: Center(
        child: Text('Halaman Utama', style: TextStyle(fontSize: 18)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Navigasi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Aksi saat menu Home diklik
                Navigator.pop(context); // Menutup Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Aksi saat menu Settings diklik
                Navigator.pop(context); // Menutup Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact Us'),
              onTap: () {
                // Aksi saat menu Contact diklik
                Navigator.pop(context); // Menutup Drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
