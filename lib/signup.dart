import 'package:ecommercefood/product.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.all(16.0), // Add some padding to the entire screen
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align items to the center
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start
          children: [
            // Centered image at the top
            Center(
              child: Image.asset(
                  "assets/images/Group.png"), // Load the first image
            ),
            const SizedBox(height: 20),
            // Align the second image to the left
            Image.asset("assets/images/text (2).png"), // Load the second image
            const SizedBox(height: 20), // Space before the text fields
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Username",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 20), // Space before the email field
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Password",
                border: InputBorder.none,
              ),
              obscureText: true, // Hide password input
            ),
            const SizedBox(height: 20), // Space before the agreement text
            const Text(
              "By continuing, you agree to our Terms of Service and Privacy Policy.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey, // Set text color
              ),
            ),
            const SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the Product screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Product()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set button color to green
                fixedSize: const Size(400, 50), // Set width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Changed text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
