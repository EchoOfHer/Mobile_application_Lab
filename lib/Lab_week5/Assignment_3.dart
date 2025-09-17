import 'package:flutter/material.dart';
import 'dart:math';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  TextEditingController tcNum = TextEditingController();
  String buttonText = 'Guess';
  int answer = Random().nextInt(9) + 1;
  String result = '';
  int chance = 3;

  void checking() {
    if (buttonText == 'Restart') {
      setState(() {
        answer = Random().nextInt(9) + 1;
        chance = 3;
        result = '';
        tcNum.clear();
        buttonText = 'Guess';
      });
      return;
    }

    int? guess = int.tryParse(tcNum.text);

    if (guess == null) return;

    if (guess == answer) {
      setState(() {
        result = 'Correct, you win! ';
        buttonText = 'Restart';
      });
    } else {
      setState(() {
        chance -= 1;
        if (guess > answer) {
          result = '$guess is too large. $chance Chance(s) left!';
        } else {
          result = '$guess is too small.  $chance Chance(s) left!';
        }

        if (chance == 0) {
          result = 'Sorry you lose. The answer is $answer';
          buttonText = 'Restart';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Guess a number game',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: tcNum,
                    decoration: const InputDecoration(
                      hintText: 'Guess a number 1-9',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(result, style: const TextStyle(color: Colors.red)),
              ElevatedButton(
                onPressed: checking,
                child: Text(buttonText),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.deepPurple, width: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
