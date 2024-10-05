import 'package:ecommercefood/checkoutscreen.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Order History'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order History',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 15),
              _buildOrderBox(
                  'Confirmed', 'Order ID: 1245566', 'Text (7)', 3, Icons.check),
              const SizedBox(height: 15),
              _buildOrderBox('Deliver', 'Order ID: 22324234543', 'Item (7)', 3,
                  Icons.delivery_dining),
              const SizedBox(height: 15),
              _buildOrderBox('Cancelled', 'Order ID: 789456123', 'Text (2)', 3,
                  Icons.cancel),
              const SizedBox(height: 15),
              _buildOrderBox(
                  'Confirmed', 'Order ID: 1245566', 'Text (7)', 3, Icons.check),
              const SizedBox(height: 15),
              _buildOrderBox('Deliver', 'Order ID: 22324234543', 'Item (7)', 3,
                  Icons.delivery_dining),
              const SizedBox(height: 15),
              _buildOrderBox('Cancelled', 'Order ID: 789456123', 'Text (2)', 3,
                  Icons.cancel),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderBox(
      String title, String orderId, String additionalText, int count,
      [IconData? icon]) {
    return GestureDetector(
      onTap: () {
        // Navigate to Order Details screen if title is 'Confirmed'
        if (title == 'Confirmed') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckoutScreen()),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                icon ?? Icons.check,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    orderId,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  for (int i = 0; i < count; i++)
                    Text(
                      additionalText,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
