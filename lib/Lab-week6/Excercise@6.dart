import 'package:flutter/material.dart';

class Excercise6 extends StatelessWidget {
  const Excercise6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Tourist Place', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,

            child: Image.asset('assets/images/Rick.webp', fit: BoxFit.fitWidth),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Richard Sanchez',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Rick and morty',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.deepOrange, size: 40),
                      Text('559'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.call, color: Colors.blue, size: 40),
                            Text(
                              'call'.toUpperCase(),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.home, color: Colors.blue, size: 40),
                            Text(
                              'route'.toUpperCase(),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.share, color: Colors.blue, size: 40),
                            Text(
                              'share'.toUpperCase(),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "\t\t\t\t\t\t\t\tRick and Morty is a critically acclaimed animated sci-fi sitcom that follows the interdimensional misadventures of Rick Sanchez, a cynical and brilliant mad scientist, and his good-natured grandson, Morty Smith. The show blends dark, adult humor with complex scientific concepts, exploring themes of nihilism, existentialism, and dysfunctional family dynamics as the duo navigates a vast multiverse. Beyond their chaotic quests, the series also delves into the lives of the Smith family, often dragging them into the chaos and showcasing the far-reaching consequences of Rick's reckless behavior. It is praised for its sharp writing, originality, and the unique way it parodies and deconstructs popular sci-fi tropes.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
