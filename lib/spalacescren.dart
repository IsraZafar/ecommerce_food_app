import 'package:ecommercefood/welcome.dart';
import 'package:flutter/material.dart';

class Spalacescren extends StatefulWidget {
  const Spalacescren({super.key});

  @override
  State<Spalacescren> createState() => _SpalacescrenState();
}

class _SpalacescrenState extends State<Spalacescren> {
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Welcome(), // Replace with your target screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _navigateToNextScreen, // Navigate on tap
              child: Image.asset("assets/images/Group 3.png"),
            ),
            SizedBox(height: 15), // Adds some space between image and text
            Text(
              'DESHI MART',
              style: TextStyle(
                fontSize: 24, // Change the font size as needed
                fontWeight: FontWeight.bold, // Bold text
                color: Colors.white, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
