import 'package:flutter/material.dart';
import 'package:praktikum/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            // Add the Grab-logo logo here
            Image.asset(
              'assets/grab-logo.png',
              width: 300,  
              height: 300, 
              fit: BoxFit.contain, 
            ),
            const SizedBox(height: 20), 
          ],
        ),
      ),
    );
  }
}
