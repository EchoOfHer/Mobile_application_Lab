import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  // 1. DEFINE FIELDS at the class level (and make them final)
  final String name;
  final int price;
  final List<dynamic> date; // Use a specific list type if known, or dynamic

  // constructor
  const Page2({
    super.key,
    required this.name,
    required this.price,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    // Everything inside build now works correctly with the class properties

    return Scaffold(
      appBar: AppBar(title: Text('Page 2')), // Added const
      body: Center(
        // Added Center for better layout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content
          children: [
            Text('Name: $name'), // Display the received data
            Text('Price: $price'),
            Text('Dates: ${date.join(', ')}'), // Display list elements
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'), // Added const
            ),
          ],
        ),
      ),
    );
  }
}
