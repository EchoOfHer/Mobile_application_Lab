import 'package:flutter/material.dart';
import 'dart:async';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  int click = 0;
  double count = 1.0;
  void countdown(Timer timer) {
    setState(() {
      count -= 0.01;
      count = double.parse(count.toStringAsFixed(2));
      if (count <= 0) {
        timer.cancel();
      }
    });
  }

  void cllickcount() {
    if (count != 0 && count <= 1) {
      setState(() {
        click += 1;
      });
    }
  }

  void gameStart() {
    setState(() {
      count = 1.0;
      click = 0;
    });
    Timer.periodic(
      const Duration(milliseconds: 10),
      (timer) => countdown(timer),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                count.toStringAsFixed(2),
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              Text('Click = $click', style: TextStyle(fontSize: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton.icon(
                    onPressed: cllickcount,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    icon: const Icon(Icons.touch_app, size: 30),
                    label: Text('Click', style: TextStyle(fontSize: 17)),
                  ),
                  FilledButton.icon(
                    onPressed: gameStart,
                    icon: const Icon(
                      Icons.refresh,
                      size: 30,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Play'.toUpperCase(),
                      style: TextStyle(fontSize: 17, color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.black),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
