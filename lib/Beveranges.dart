import 'package:ecommercefood/search.dart';
import 'package:flutter/material.dart';

class BeverageScreen extends StatelessWidget {
  const BeverageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beverage Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),

              // Row for additional product containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildProductContainer(
                      context: context,
                      imagePath: 'assets/images/Group 6845.png',
                      title: 'Fresh Orange Available',
                      subtitle: 'Orange Juice',
                      price: '\$1.55',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildProductContainer(
                      context: context,
                      imagePath: 'assets/images/Group 6841.png',
                      title: 'Fresh Juices Available',
                      subtitle: 'Apple & Grapes Juice',
                      price: '\$1.55',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Additional products in new row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildProductContainer(
                      context: context,
                      imagePath: 'assets/images/Group 6824 (1).png',
                      title: 'Fresh Coke Available',
                      subtitle: 'Diet Coke',
                      price: '\$1.55',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildProductContainer(
                      context: context,
                      imagePath: 'assets/images/pngfuel 12.png',
                      title: 'Fresh Juices Available',
                      subtitle: 'Bottle Juice',
                      price: '\$1.55',
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
                        builder: (context) => const Search(),
                      ),
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
    required BuildContext context,
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
