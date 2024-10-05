import 'package:ecommercefood/profile.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Delivery',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Payment',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Card Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Expiry Date (MM/YY)',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'CVV',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              const Text(
                'Promo Code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter promo code',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Total Cost',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                '\$100.00', // Example total cost
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const Expanded(
                    child: Text(
                      'By placing an order you agree to our Terms and Conditions',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Space before the button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the HomeScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderConfirmationScreen()),
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
                  "Place Order",
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
      ),
    );
  }
}

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Confirmation'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Displaying the image
            Image.asset(
              "assets/images/Group 6872.png", // Corrected path
              width: 200, // Adjust width as needed
              height: 200, // Adjust height as needed
            ),
            const SizedBox(height: 20), // Space between image and text
            const Text(
              'Your order has been Accepted',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), // Space between title and description
            const Text(
              'Your item has been placed and is on its way to be processed.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomeScreen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TrackOrderScreen()),
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
                "Track Order",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Changed text color to white
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between button and back text
            TextButton(
              onPressed: () {
                // Navigate back to home
                Navigator.pop(context);
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(
                  color: Colors.black, // Black text color
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Order'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        // Added SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Order details card
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Horizontal layout for Favorite label and Sprite Can
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Favorite',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          // You can add a star icon or any other widget here
                          const Icon(Icons.star, color: Colors.yellow)
                        ],
                      ),
                      const SizedBox(height: 8), // Space below Favorite label
                      const Text(
                        'Sprite Can',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '325ml, Price',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 16), // Space before price
                      // Right side: Price
                      const Text(
                        '\$1.50',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                  height: 20), // Space between card and rectangle box

              // Rectangle box

              const SizedBox(height: 20), // Space between rectangle and image
              // Image above the error message
              Image.asset(
                "assets/images/image 13.png", // Replace with your image path
                width: 100, // Adjust width as needed
                height: 100, // Adjust height as needed
              ),
              const SizedBox(
                  height: 20), // Space between image and error message

              // Error message
              const Text(
                'Oops! Order Failed',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 8), // Space between error message and description
              const Text(
                'Something went terribly wrong.\nPlease try again.',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20), // Space before button
              // Back to Home button
              ElevatedButton(
                onPressed: () {
                  // Navigate back to home
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text('Back to Home'),
              ),
              const SizedBox(height: 20), // Space before the button
              ElevatedButton(
                onPressed: () {
                  // Navigate to the HomeScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
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
                  "Please Try Again",
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
      ),
    );
  }
}
