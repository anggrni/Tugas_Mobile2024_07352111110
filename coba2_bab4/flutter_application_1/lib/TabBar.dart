import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Tab Bar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Ini Halaman Home')),
            Center(child: Text('Ini Halaman Search')),
            Center(child: Text('Ini Halaman Profile')),
          ],
        ),
      ),
    );
  }
}
