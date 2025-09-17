import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  TextEditingController tcFirst_num = TextEditingController();
  TextEditingController tcsecond_num = TextEditingController();
  String output = '';
  int result = 0;
  void clear() {
    setState(() {
      tcFirst_num.clear();
      tcsecond_num.clear();
      output = '';
    });
  }

  void calculate() {
    int? first = int.tryParse(tcFirst_num.text);
    int? second = int.tryParse(tcsecond_num.text);
    if (tcFirst_num.text.isNotEmpty &&
        tcsecond_num.text.isNotEmpty &&
        first != null &&
        second != null) {
      setState(() {
        result = first + second;
        output = 'Result = $result';
      });
    } else {
      setState(() {
        output = 'Incorrect input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: tcFirst_num,
                      decoration: InputDecoration(hint: Text('First number')),
                    ),
                  ),
                  Text('+'),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: tcsecond_num,
                      decoration: InputDecoration(hint: Text("Second number")),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: clear,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Clear', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(output, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
