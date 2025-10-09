import 'package:flutter/material.dart';

class CbSw extends StatefulWidget {
  const CbSw({super.key});

  @override
  State<CbSw> createState() => _CbSwState();
}

class _CbSwState extends State<CbSw> {
  //state variable
  bool cb = false;

  //Method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: cb,
                  onChanged: (bool? value) {
                    // print(value!);
                    setState(() {
                      cb = value!;
                    });
                  },
                ),
                Text('Red'),
                SizedBox(width: 20),
                Text('Checkbox status: ${cb}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
