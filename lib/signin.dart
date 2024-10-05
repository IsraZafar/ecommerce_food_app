import 'package:ecommercefood/number.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Number(), // Replace NextScreen with your target screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _navigateToNextScreen, // Navigate on tap
          child: Image.asset("assets/images/Group 6925.png"),
        ),
      ),
    );
  }
}
