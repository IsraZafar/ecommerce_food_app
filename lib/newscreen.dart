import 'package:ecommercefood/Nextscreenproduct.dart';
import 'package:flutter/material.dart';

class Newscreen extends StatefulWidget {
  const Newscreen({super.key});

  @override
  State<Newscreen> createState() => _NewscreenState();
}

class _NewscreenState extends State<Newscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Back arrow
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        title: const Text('New Screen'), // Optional title for the AppBar
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding for the content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start (left)
            children: [
              // Centered image at the top of the screen
              Center(
                child: Image.asset(
                  "assets/images/Vector.png", // Load the vector image
                ),
              ),
              const SizedBox(height: 16), // Space between the image and title

              // Row for Title and Heart Icon
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Space between title and icon
                children: [
                  // Title
                  const Text(
                    'Natural Apple', // Title text
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Heart Icon
                  const Icon(
                    Icons.favorite, // Heart icon
                    color: Colors.red, // Color of the heart
                    size: 20, // Size of the heart icon
                  ),
                ],
              ),
              const SizedBox(height: 8), // Space between title and price

              // Price and Divider Row
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Space between price and divider
                children: [
                  const Text(
                    '\$4.99', // Price text
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors
                          .black, // Optional color for the additional text
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 2, // Thickness of the line
                    color: Colors.grey, // Color of the line
                    width: 20, // Space between price and divider
                  ),
                ],
              ),
              const SizedBox(height: 8), // Space between price and next text

              // Price text
              const Text(
                'Price: 1 kg', // Price text
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Optional color for the price
                ),
              ),
              const SizedBox(
                  height: 8), // Space between price and the next text

              // Additional text "- 1 +"
              const Text(
                '- 1 +', // Additional text
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Optional color for the additional text
                ),
              ),

              const Divider(
                thickness: 2, // Thickness of the line
                color: Colors.grey, // Color of the line
              ),

              // Product Detail title
              const Text(
                'Product Detail', // Additional text
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black, // Optional color for the additional text
                ),
              ),
              const SizedBox(
                  height: 8), // Space between detail title and content

              // Product details
              const Text(
                'Apple Are Nutritious. Apple May Be Good for Weight Loss. '
                'Apple May Also Be Good For Heart. '
                'As Part of A Healthful And Varied Diet', // Additional text
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Optional color for the additional text
                ),
              ),
              const Divider(
                thickness: 1, // Thickness of the line
                color: Colors.grey, // Color of the line
              ),

              // Nutritional Information with Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nutritions', // Additional text
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors
                          .black, // Optional color for the additional text
                    ),
                  ),
                  // Grey button with "100g"
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[300], // Grey background
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    child: const Text(
                      '100gr',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // Arrow Icon
                  IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.black),
                    onPressed: () {
                      // Handle the arrow button press
                    },
                  ),
                ],
              ),
              const Divider(
                thickness: 1, // Thickness of the line
                color: Colors.grey, // Color of the line
              ),

              // Review Row with Star Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Review', // Additional text
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors
                          .black, // Optional color for the additional text
                    ),
                  ),
                  // Row of 6 star icons
                  Row(
                    children: List.generate(
                        6,
                        (index) => const Icon(
                              Icons.star,
                              color: Colors.orange, // Color of the star
                              size: 24, // Size of the star icon
                            )),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space before the button

              // Add To Basket Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the HomeScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Nextscreenproduct()),
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
                  "Add To Basket",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed text color to white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
