import 'package:flutter/material.dart';

class Pageviewdemo extends StatefulWidget {
  const Pageviewdemo({super.key});

  @override
  State<Pageviewdemo> createState() => _PageviewdemoState();
}

class _PageviewdemoState extends State<Pageviewdemo> {
  // REMOVED: The unnecessary constructor 'pageviewDemo({super.key});'

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          //1child = 1 page
          children: [
            Container(
              color: Colors.amber,
              child: const Center(child: Text('Page 1')),
            ), // Added Center and const
            Container(
              color: Colors.red,
              child: const Center(child: Text('Page 2')),
            ), // Added Center and const
            Container(
              color: Colors.green,
              child: const Center(child: Text('Page 3')),
            ), // Added Center and const
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Changed to animateToPage for a smoother transition
          pageController.animateToPage(
            // or use jumpToPage
            1, // Index of the page (Page 2)
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
          // If you prefer an instant jump, use:
          // pageController.jumpToPage(1);
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose(); // Best practice: dispose of the controller
    super.dispose();
  }
}
