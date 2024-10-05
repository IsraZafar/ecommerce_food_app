import 'package:ecommercefood/orderhistory.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Order'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please check your order status to get the item delivering to your home.',
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                  height: 20), // Space between the message and order details
              _buildOrderDetail('Order Confirmed', 'Feb 22, 2024'),
              const SizedBox(height: 20), // Space between different orders
              _buildOrderDetail('Order Confirmed', 'Feb 22, 2024'),
              const SizedBox(height: 20),
              _buildOrderDetail('Order Confirmed', 'Feb 22, 2024'),
              const SizedBox(height: 20),
              _buildOrderDetail('Order Confirmed', 'Feb 22, 2024'),
              const SizedBox(height: 20),
              _buildOrderDetail('Order Confirmed', 'Feb 22, 2024'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderDetail(String title, String date) {
    return InkWell(
      onTap: () {
        // Navigate to a new screen when the order detail is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderHistory(),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.grey, // Icon color
              shape: BoxShape.circle, // Make it circular
            ),
            child: const Icon(
              Icons.check, // Use any icon you want
              size: 16,
              color: Colors.white, // Icon color inside the circle
            ),
          ),
          const SizedBox(width: 10), // Space between the icon and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Text(
            date,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
