import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Dropdown',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DropdownExample(),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  // Daftar item dropdown
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  // Nilai yang dipilih
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Dropdown'),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Pilih Item'),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue; // Update nilai yang dipilih
            });
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
