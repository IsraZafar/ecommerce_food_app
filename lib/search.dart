import 'package:ecommercefood/filters.dart';
import 'package:flutter/material.dart';
// Import the NextScreen

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search TextField
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Egg..',
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

            // First row of products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 16.png',
                    title: 'Fresh Egg Available',
                    subtitle: 'Egg Chicken Red',
                    price: '\$6.99',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/hiclipart 2.png',
                    title: 'Special Egg Available',
                    subtitle: 'Egg Chicken White',
                    price: '\$4.99',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Second row of products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/rp_24790392_0053554627_l 2.png',
                    title: 'Fresh pasta Available',
                    subtitle: 'Egg Pasta',
                    price: '\$6.99',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 16.png',
                    title: 'Fresh Noddels Available',
                    subtitle: 'Egg Noddeles',
                    price: '\$4.99',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Third row of products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/pngfuel 18.png',
                    title: 'Fresh MAyonies Available',
                    subtitle: 'MAyonises ',
                    price: '\$4.99',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildProductContainer(
                    imagePath: 'assets/images/egg-noodle (1) 2.png',
                    title: 'Special Egg Available',
                    subtitle: 'Noodles',
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
                  // Navigate to NextScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Filters()),
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
