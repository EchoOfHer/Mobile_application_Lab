import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //image
          Expanded(
            flex: 7,
            child: Image.asset('assets/images/baking.jpg', fit: BoxFit.cover),
          ),
          //TExt+button
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Baking lessons'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                Text(
                  'Master  the art of baking'.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Spacer(),
                FilledButton.icon(
                  style: FilledButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {},
                  label: Text(
                    'Start learning'.toUpperCase(),
                    style: TextStyle(color: bgColor),
                  ),
                  icon: Icon(Icons.arrow_forward, color: bgColor),
                  iconAlignment: IconAlignment.end,
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
