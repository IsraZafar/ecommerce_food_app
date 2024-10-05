import 'package:ecommercefood/login.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Back arrow icon
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Use min to avoid taking full height
          children: [
            Image.asset(
                "assets/images/illustration.png"), // Load the first image
            const SizedBox(height: 20), // Space between the two images
            Image.asset("assets/images/text.png"), // Load the second image
            const SizedBox(height: 20), // Space before the next images
            Image.asset("assets/images/Your zone.png"), // Load the third image
            const SizedBox(height: 20), // Space before the next image
            Image.asset("assets/images/Your area.png"), // Load the fourth image
            const SizedBox(height: 20), // Space before the button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 12), // Button padding
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Login(), // Change Login to your target widget
                  ),
                );
              },
              child: const Text(
                'Submit',
                selectionColor: Colors.green, // Add button text here
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
