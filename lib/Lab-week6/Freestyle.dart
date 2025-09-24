import 'dart:async';

import 'package:flutter/material.dart';

class Freestyle extends StatefulWidget {
  const Freestyle({super.key});

  @override
  State<Freestyle> createState() => _FreestyleState();
}

class _FreestyleState extends State<Freestyle> {
  TextEditingController tcAdding = TextEditingController();
  String status = '';
  String image = 'assets/images/white.webp';
  Timer? timer;
  bool isTimerActive = false;
  double iniCount = 1;
  double count = 1;
  void setTime() {
    setState(() {
      status = '';
    });
    double? add = double.tryParse(tcAdding.text);
    if (tcAdding.text.isEmpty) {
      setState(() {
        status = 'Pls input time first';
      });
    } else {
      if (add != null) {
        if (add != 0) {
          setState(() {
            count = add;
            iniCount = add;
            count.toStringAsFixed(2);
            status = "Your tiime is updated";
          });
        } else {
          setState(() {
            status = 'Pls cant countdown 0';
          });
        }
      } else {
        setState(() {
          status = "Only numbers are allow";
        });
      }
    }
  }

  void countdown(Timer timer) {
    setState(() {
      count -= 0.01;
      count.toStringAsFixed(2);
      if (count <= 0) {
        count = 0;
        isTimerActive = false;
        image = 'assets/images/Notime.jpg';
        timer.cancel();
      }
    });
  }

  void toggleTimer() {
    if (isTimerActive) {
      // Stop the timer
      timer?.cancel();
      setState(() {
        isTimerActive = false;
        status = 'Timer stopped.';
      });
    } else {
      // Start the timer
      if (count <= 0) {
        setState(() {
          status = 'Time has ended. Please add time to begin.';
        });
        return; //this is important to make it stop if no time
      }

      timer = Timer.periodic(
        const Duration(milliseconds: 10),
        (t) => countdown(t),
      );

      setState(() {
        isTimerActive = true;
        tcAdding.clear();
        status = '';
        image = 'assets/images/white.webp';
      });
    }
  }

  void reset() {
    setState(() {
      count = iniCount;
      status = '';
      image = 'assets/images/white.webp';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Countdown Timer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '${count.toStringAsFixed(2)} s',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.add_alarm, size: 40),
                SizedBox(width: 20),
                Flexible(
                  child: TextField(
                    controller: tcAdding,
                    decoration: InputDecoration(
                      hint: Text(
                        'Add the time',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: setTime,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                  child: Icon(
                    Icons.confirmation_num,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(status, style: TextStyle(color: Colors.red)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: toggleTimer,
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      isTimerActive ? 'Stop' : 'Start',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  icon: Icon(
                    isTimerActive
                        ? Icons.stop_circle_rounded
                        : Icons.play_circle_fill,
                    size: 30,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isTimerActive ? Colors.red : Colors.teal,
                  ),
                ),
                SizedBox(width: 20),
                FilledButton.icon(
                  onPressed: reset,
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Reset',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  icon: Icon(Icons.replay, size: 30, color: Colors.black),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
