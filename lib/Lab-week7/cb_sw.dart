import 'package:flutter/material.dart';

class CbSw extends StatefulWidget {
  const CbSw({super.key});

  @override
  State<CbSw> createState() => _CbSwState();
}

class _CbSwState extends State<CbSw> {
  //state variable
  bool cb = false;
  bool sw = false;

  //Method to update checkbox
  void updateCB(bool? value) {
    // print(value!);
    setState(() {
      cb = value!;
    });
  }

  //Method to update switch
  void updateSw(bool? value) {
    // print(value!);
    setState(() {
      sw = value!;
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
                Checkbox(value: cb, onChanged: updateCB),
                Text('Red'),
                SizedBox(width: 20),
                Text('Checkbox status: ${cb}'),
              ],
            ),
            Row(
              children: [
                Switch(value: sw, onChanged: updateSw),
                Text('Red'),
                SizedBox(width: 20),
                Text('Checkbox status: ${sw}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
