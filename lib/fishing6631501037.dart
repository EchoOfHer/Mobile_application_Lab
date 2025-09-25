//ID: 6631501037
import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

class Fishing extends StatefulWidget {
  const Fishing({super.key});

  @override
  State<Fishing> createState() => _FishingState();
}

class _FishingState extends State<Fishing> {
  String init_images = 'assets/images/fish/fisherman.png';
  int quantity = 0;
  String status = '';
  int totalPrice = 0;
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
  void fishing() {
    // // generate a random number min to max
    // int num = min + Random().nextInt(max - min + 1);

    if (worms != 0) {
      int randomfish = Random().nextInt(4);
      int randomNum = 1 + Random().nextInt(6 - 1 + 1);
      String fishtype = fish[randomfish]['name'];
      int price = fish[randomfish]['price'];
      int newPrice = price * randomNum;
      setState(() {
        init_images = fish[randomfish]['image'];
        quantity = randomNum;
        status = '${fishtype} x ${quantity} = ${newPrice}';
        totalPrice += newPrice;
        worms -= 1;
      });
    }
  }

  void reset() {
    setState(() {
      totalPrice = 0;
      status = '';
      init_images = 'assets/images/fish/fisherman.png';
      worms = 5;
    });
  }

  Widget createWorms(int workTime) {
    if (workTime == 5) {
      return OverflowBar(
        children: [
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
        ],
      );
    } else if (workTime == 4) {
      return OverflowBar(
        children: [
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
        ],
      );
    } else if (workTime == 3) {
      return OverflowBar(
        children: [
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
        ],
      );
    } else if (workTime == 2) {
      return OverflowBar(
        children: [
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
          Icon(Icons.waves, color: Colors.deepOrange, size: 25),
        ],
      );
    } else if (workTime == 1) {
      return OverflowBar(
        children: [Icon(Icons.waves, color: Colors.deepOrange, size: 25)],
      );
    } else {
      return OverflowBar(children: [
          
        ],
      );
    }
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Worms: ', style: TextStyle(fontSize: 20)),
                createWorms(worms),
              ],
            ),
            SizedBox(height: 20),
            //coins
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.currency_exchange, color: Colors.amber),
                SizedBox(width: 10),
                Text(totalPrice.toString(), style: TextStyle(fontSize: 20)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Image.asset(init_images),
            ),
            Text(status, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: worms > 0 ? fishing : null,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Fishing', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Reset', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
