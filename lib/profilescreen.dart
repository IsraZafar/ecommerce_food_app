import 'package:ecommercefood/order.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        // Make the body scrollable
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Mr. Nitish Kumar',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                'nitishkumar@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 102, 84, 84),
                ),
              ),
              const SizedBox(height: 20), // Space between text and icons
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.lightBlue, // Set background color to light blue
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconContainer(Icons.list_alt, 'Order', () {
                      // Navigate to OrderScreen on button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Order()),
                      );
                    }),
                    _buildIconContainer(Icons.payment, 'Payment', () {
                      // Handle Payment button press
                      print('Payment pressed');
                    }),
                    _buildIconContainer(Icons.list_sharp, 'Address', () {
                      // Handle Address button press
                      print('Address pressed');
                    }),
                    _buildIconContainer(Icons.person, 'Single', () {
                      // Handle Single button press
                      print('Single pressed');
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Space below icons
              _buildDetailsSection(), // Added details section
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconContainer(
      IconData icon, String label, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.black, // Icon color set to black
            size: 40,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blueGrey[200], // Light blue background for visibility
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailButton(Icons.person, 'User Detail'),
          const SizedBox(height: 8), // Space between rows
          _buildDetailButton(Icons.settings, 'Setting'),
          const SizedBox(height: 8), // Space between rows
          _buildDetailButton(Icons.help, 'Help & Support'),
          const SizedBox(height: 8), // Space between rows
          _buildDetailButton(Icons.language, 'Change Language'),
          const SizedBox(height: 8), // Space between rows
          _buildDetailButton(
              Icons.exit_to_app, 'Logout'), // Changed icon for Logout
        ],
      ),
    );
  }

  Widget _buildDetailButton(IconData icon, String label) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press here
        print('$label pressed');
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              icon,
              color: Colors.grey,
              size: 16,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
