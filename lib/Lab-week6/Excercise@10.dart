import 'package:flutter/material.dart';
import 'dart:async';

import 'package:lab_4aug/Lab-week6/Timer.dart';

class Excercise10 extends StatefulWidget {
  const Excercise10({super.key});

  @override
  State<Excercise10> createState() => _Excercise10State();
}

class _Excercise10State extends State<Excercise10> {
  double count = 1;
  void countdown(Timer timer) {
    setState(() {
      count -= 0.01;
      count = double.parse(count.toStringAsFixed(2));
      if (count <= 0) {
        count = 0;
        timer.cancel();
      }
    });
  }

  void restart() {
    setState(() {
      count = 1;
    });
  }

  void begin() {
    Timer.periodic(
      const Duration(milliseconds: 10),
      (timer) => countdown(timer),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                count.toStringAsFixed(2),
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: begin,
                  label: Text('Start', style: TextStyle(fontSize: 16)),
                  icon: Icon(Icons.play_circle_fill, size: 30),
                ),
                SizedBox(width: 10),
                FilledButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: restart,
                  label: Text('Reset', style: TextStyle(fontSize: 16)),
                  icon: Icon(Icons.replay, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
