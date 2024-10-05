import 'package:ecommercefood/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Align the image to the left
              children: [
                Image.asset(
                    "assets/images/text (1).png"), // Load the second image
              ],
            ),
            const SizedBox(height: 20), // Space before the text fields
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Enter email or username",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter Password",
                border: InputBorder.none,
              ),
              obscureText: true, // Hide password input
            ),
            const SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomeScreen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
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
                "Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Changed text color to white
                ),
              ),
            ),
            const SizedBox(height: 20), // Space before the sign-in text
            Center(
              child: Text(
                "Not registered? Sign up",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
