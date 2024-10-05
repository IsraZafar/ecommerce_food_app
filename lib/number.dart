import 'package:ecommercefood/verification.dart';
import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Verification(), // Replace NextScreen with your target screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _navigateToNextScreen, // Navigate on tap
          child: Image.asset("assets/images/Group 6925 (1).png"),
        ),
      ),
    );
  }
}
