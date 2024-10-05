import 'package:ecommercefood/screen.dart';
import 'package:ecommercefood/screens.dart';
import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.close), // Cross icon
              onPressed: () {
                Navigator.pop(context); // Close the current screen
              },
            ),
            const SizedBox(width: 8), // Spacing between icon and text
            const Text(
              'Filters', // Title
              style: TextStyle(fontSize: 20), // Customize the text style
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding for the body content
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the start
          children: [
            const Text(
              'Categories', // Categories text
              style: TextStyle(
                fontSize: 24, // Font size for categories
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
            const SizedBox(height: 16), // Spacing below categories text

            // Row for Eggs category
            Row(
              children: [
                Container(
                  width: 24, // Width of the box
                  height: 24, // Height of the box
                  decoration: BoxDecoration(
                    color: Colors.green, // Green background
                    borderRadius: BorderRadius.circular(4.0), // Rounded corners
                  ),
                  child: const Icon(
                    Icons.check, // Checkmark icon
                    color: Colors.white, // White color for the icon
                    size: 16, // Size of the icon
                  ),
                ),
                const SizedBox(width: 8), // Spacing between box and text
                const Text(
                  'Eggs', // Text next to the box
                  style: TextStyle(fontSize: 18), // Text style
                ),
              ],
            ),
            const SizedBox(height: 8), // Spacing between rows

            // Row for Noodles & Pasta category
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank, // Unchecked icon
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Noodles & Pasta',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Row for Chips & Crisps category
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Chips & Crisps',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Row for Fast Food category
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Fast Food',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 16), // Spacing below categories

            // Brands Section
            const Text(
              'Brands', // Brands text
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Row for Cocola brand
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check, // Checked icon
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Cocola',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Row for Individual Collection brand
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Individual Collection',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Row for Ifad brand
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Ifad',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Row for Kazi Farmas brand
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Kazi Farmas',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const Spacer(), // Push the button to the bottom

            // Apply Filters Button
            SizedBox(
              width: double.infinity, // Full width button
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the HomeScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screens()),
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
                  "Apply Filters",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed text color to white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
