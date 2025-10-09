import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  //state variable
  int radio1 = 9;
  //method to update radioBut
  void updateRadio1(int? val) {
    setState(() {
      radio1 = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                //if value == groupValue then it will be selected.
                Radio(value: 0, groupValue: radio1, onChanged: updateRadio1),
                Text('0'),
                Radio(value: 1, groupValue: radio1, onChanged: updateRadio1),
                Text('1'),
                SizedBox(width: 20),
                Text('U choosed ${radio1}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
