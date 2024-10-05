import 'package:ecommercefood/newscreen.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Image.asset(
                    'assets/images/Naviagtion.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),

              // Group image and text in a row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Group.png",
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Daka Banasree",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Rectangular Box for Search Box
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Centered Heading for Fresh Vegetables
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      'assets/images/2771 1.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "FRESH VEGETABLE",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Get up to 40% off",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Row for Exclusive Offer and See All
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Exclusive Offer",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Row for the first two product containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First Banana Container
                  Expanded(
                    child: _buildProductContainer(
                      imagePath: 'assets/images/banana.png',
                      title: 'Fresh Bananas Available',
                      subtitle: 'Organic Bananas',
                      price: '\$4.99',
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Second Apple Container
                  Expanded(
                    child: _buildProductContainer(
                      imagePath: 'assets/images/pngfuel 1.png',
                      title: 'Fresh Apple Available',
                      subtitle: 'Red Apple',
                      price: '\$4.99',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Row for Best Selling section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Row for the last two product containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildProductContainer(
                      imagePath:
                          'assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
                      title: 'Special Item Available',
                      subtitle: 'Bell Pepper Red',
                      price: '\$4.99',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildProductContainer(
                      imagePath: 'assets/images/pngfuel 3.png',
                      title: 'Special Item Available',
                      subtitle: 'Ginger',
                      price: '\$4.99',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Groceries section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Groceries",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),

              // Row for Pulses and Rice images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/Pulses.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/Rice.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Row for the product containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildProductContainer(
                      imagePath: 'assets/images/pngfuel 4.png',
                      title: 'Fresh Meat Available',
                      subtitle: 'Meat Bone',
                      price: '\$4.99',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildProductContainer(
                      imagePath: 'assets/images/pngfuel 5.png',
                      title: 'Fresh Chicken Available',
                      subtitle: 'Broiler Chicken',
                      price: '\$4.99',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Bottom bar image with navigation
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Newscreen()),
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
      ),
    );
  }

  Widget _buildProductContainer({
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "1kg, Price",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: const Text(
                  "+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

