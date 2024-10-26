import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Converse'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView( // Make the body scrollable
        child: Column(
          children: [
            // Add a GIF section here
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/converse.gif', // Replace with your GIF file path
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Shop the Latest Styles',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true, // Important for preventing overflow
                physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                children: List.generate(4, (index) {
                  final List<String> images = [
                    'assets/1.webp',
                    'assets/2.webp',
                    'assets/3.webp',
                    'assets/4.webp',
                  ];

                  return Card(
                    shape: RoundedRectangleBorder( // Optional: round corners of the card
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Expanded( // Use Expanded to make the image take available space
                          child: ClipRRect( // Clip to round corners if needed
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Product ${index + 1}'),
                        ),
                        Text(
                          '\$${(index + 1) * 20}',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal), // Normal font weight for price
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add to cart functionality here
                          },
                          child: const Text('Add to Cart'),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Fast, Free Shipping on orders over \$75'),
          ],
        ),
      ),
    );
  }
}