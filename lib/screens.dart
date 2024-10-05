import 'package:ecommercefood/profilescreen.dart';
import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card'),
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            // First Image Section
            _buildImageSection('assets/images/Group 6863.png'),

            // Second Image Section
            _buildImageSection('assets/images/Group 6864.png'),

            // Third Image Section
            _buildImageSection('assets/images/Group 6865.png'),

            // Fourth Image Section
            _buildImageSection('assets/images/Group 6866.png'),

            const SizedBox(height: 16), // Space before the button

            // Apply Filters Button
            SizedBox(
              width: double.infinity, // Full width button
              child: ElevatedButton(
                onPressed: () {
                  // Your button action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Set button color to green
                  fixedSize: const Size(400, 50), // Set width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                ),
                child: const Text(
                  "Go To Checkout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed text color to white
                  ),
                ),
              ),
            ),

            // Bottom bar image with navigation
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to Profilescreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/bottom bar.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(String imagePath) {
    return Container(
      width: double.infinity, // Set width to fill the screen
      height: 100, // Set height of the box
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the box
        borderRadius: BorderRadius.circular(8), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Offset for shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8), // Same radius for the image
        child: Image.asset(
          imagePath, // Change to your image path
          fit: BoxFit.cover, // Make the image cover the area
        ),
      ),
    );
  }
}
