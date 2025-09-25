//ID: 6631501037
import 'package:flutter/material.dart';

class Fishing extends StatefulWidget {
  const Fishing({super.key});

  @override
  State<Fishing> createState() => _FishingState();
}

class _FishingState extends State<Fishing> {
  String init_images = 'assets/images/fish/fisherman.png';
  int worms = 5;
  // Fish data
  List fish = [
    {
      'name': 'AnglerFish',
      'price': 20,
      'image': 'assets/images/fish/anglerfish.png',
    },
    {
      'name': 'NeonTerTra',
      'price': 10,
      'image': 'assets/images/fish/neon-tetra.png',
    },
    {
      'name': 'Puffer',
      'price': 5,
      'image': 'assets/images/fish/puffer-fish.png',
    },
    {'name': 'Shark', 'price': 10, 'image': 'assets/images/fish/shark.png'},
  ];
 Widget createWorms(){
  return 
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Fishing Game', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //worms
            Row(
              children: [
                Text('Worms: ', style: TextStyle(fontSize: 20)),
                createWorms(),
              ],
            ),
            SizedBox(height: 20),
            //coins
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, color: Colors.amber),
                Text('0', style: TextStyle(fontSize: 20)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Image.asset(init_images),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Fishing', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Reset', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
