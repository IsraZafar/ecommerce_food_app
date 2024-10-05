import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align everything to the start
          children: [
            // Profile Picture
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/Rectangle 82.png"),
                ),
                const SizedBox(width: 16),
                // User Info Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User Name
                      const Text(
                        'Afsar Haseenor',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      // User Email
                      const Text(
                        'Afsar@gmail.com',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Space before Order section

            // Order Section
            _buildOrderRow(Icons.list, 'Orders'),
            _buildOrderRow(Icons.details, 'My Detail'),
            _buildOrderRow(Icons.payment, 'Payment Method'),
            _buildOrderRow(Icons.delivery_dining, 'Delivery Address'),
            _buildOrderRow(Icons.notification_add, 'Notification'),
            _buildOrderRow(Icons.card_giftcard, 'Promo Card'),
            _buildOrderRow(Icons.help, 'Help'),
            _buildOrderRow(Icons.info, 'About'),

            const SizedBox(height: 20), // Space before logout button
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen or any other screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, // Set button color to green
                fixedSize: const Size(400, 50), // Set width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: const Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Changed text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create order rows
  Widget _buildOrderRow(IconData icon, String title) {
    return Column(
      children: [
        Row(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center align items vertically
          children: [
            Icon(icon, size: 30, color: Colors.grey), // Icon
            const SizedBox(width: 8), // Space between icon and text
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10), // Space between rows
        Divider(
          thickness: 1, // Thickness of the line
          color: Colors.grey[400], // Color of the line
        ),
      ],
    );
  }
}
