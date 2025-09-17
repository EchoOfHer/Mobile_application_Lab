import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
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
                  Text('Guess a number game', style: TextStyle(fontSize: 25)),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hint: Text('Guess a number 0-9'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('result', style: TextStyle(color: Colors.red)),
              ElevatedButton(onPressed: null, child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
