import 'package:ecommercefood/screen.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Screen(), // Navigate to Location screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _navigateToNextScreen, // Trigger navigation on tap
          child: Image.asset("assets/images/Verification.png"),
        ),
      ),
    );
  }
}
