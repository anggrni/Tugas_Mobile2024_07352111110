import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Bottom Navigation Bar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _currentIndex = 0; // Menyimpan indeks tab yang aktif

  // Daftar halaman untuk setiap tab
  final List<Widget> _pages = [
    Center(child: Text('Halaman Home', style: TextStyle(fontSize: 20))),
    Center(child: Text('Halaman Search', style: TextStyle(fontSize: 20))),
    Center(child: Text('Halaman Profile', style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: _pages[_currentIndex], // Menampilkan halaman sesuai tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indeks tab yang aktif
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Perbarui indeks tab yang aktif
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
