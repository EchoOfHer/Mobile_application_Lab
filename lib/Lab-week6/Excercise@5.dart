import 'package:flutter/material.dart';

class Excercise5 extends StatelessWidget {
  const Excercise5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Cooking Recipes', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Papaya Salad',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur adipiscing elit. Amet consectetur adipiscing elit quisque faucibus ex sapien. Quisque faucibus ex sapien vitae pellentesque sem placerat. Vitae pellentesque sem placerat in id cursus mi.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/salad.jpg'),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amberAccent, size: 35),
                          Icon(Icons.star, color: Colors.amberAccent, size: 35),
                          Icon(Icons.star, color: Colors.amberAccent, size: 35),
                          Icon(Icons.star, color: Colors.amberAccent, size: 35),
                          Icon(Icons.star, size: 35),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          '3128 reviews',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.brown),
                              Text(
                                'COOK:',
                                style: TextStyle(color: Colors.brown),
                              ),
                              Text(
                                '5 mins',
                                style: TextStyle(color: Colors.brown),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.red),
                              Text(
                                'PREP:',
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                '10 mins',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Icon(Icons.menu_open, color: Colors.black),
                              Text('FEEDS:'),
                              Text('1-3'),
                            ],
                          ),
                        ],
                      ),
                    ],
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
