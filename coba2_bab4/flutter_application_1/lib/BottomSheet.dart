import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh BottomSheet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ModalBottomSheetExample(),
    );
  }
}

class ModalBottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  color: Colors.white,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Ini adalah Modal BottomSheet',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Tampilkan Modal BottomSheet'),
        ),
      ),
    );
  }
}
