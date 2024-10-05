import 'package:ecommercefood/Beveranges.dart';
import 'package:flutter/material.dart';

class Nextscreenproduct extends StatefulWidget {
  const Nextscreenproduct({super.key});

  @override
  State<Nextscreenproduct> createState() => _NextscreenproductState();
}

class _NextscreenproductState extends State<Nextscreenproduct> {
  // Variable to hold the index of the selected item in the bottom navigation bar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Add navigation logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/Naviagtion.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
              // Title for "Find Product"
              const Text(
                'Find Product',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
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

              // Row for Group 292 and beef bone images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/Group 292.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/beef bone.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Row for pngfuel images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 9.png',
                    title: 'Meat & Fish',
                  ),
                  const SizedBox(width: 8),
                  _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 6.png',
                    title: 'Bakery & Snacks',
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Additional products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildProductContainer(
                    imagePath: 'assets/images/pngfuel.png',
                    title: 'Diary & Eggs',
                  ),
                  const SizedBox(width: 8),
                  _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 6 (1).png',
                    title: 'Bavarange',
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
                          builder: (context) => const BeverageScreen()),
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
              const SizedBox(height: 16), // Optional spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductContainer(
      {required String imagePath, required String title}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
