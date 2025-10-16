import 'package:flutter/material.dart';
import 'Fruit.dart';
import 'Page1.dart';

class Page2 extends StatelessWidget {
  Fruit fruit;
  // 1. DEFINE FIELDS at the class level (and make them final)
  // final String name;
  // final int price;
  // final List<dynamic> date; // Use a specific list type if known, or dynamic

  // constructor 1
  // const Page2({
  //   super.key,
  //   required this.name,
  //   required this.price,
  //   required this.date,
  // });
  Page2({super.key, required this.fruit});

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
            Text('Name: ${fruit.name}'), // Display the received data
            Text('Price: ${fruit.price}'),
            Text('Dates: ${fruit.date.join(', ')}'), // Display list elements
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'), // Added const
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      //remove history and go to the page we select
                      MaterialPageRoute(builder: (context) => Page1()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text('Logout'), // Added const
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
