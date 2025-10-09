import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  //state
  String initDrop = 'Monday';
  //method
  void updateDropdown(String? val) {
    setState(() {
      initDrop = val!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              value: initDrop,
              items: [
                DropdownMenuItem(value: 'Monday', child: Text('Monday')),
                DropdownMenuItem(value: 'Tuesday', child: Text('Tuesday')),
                DropdownMenuItem(value: 'Wednesday', child: Text('Wednesday')),
              ],
              onChanged: updateDropdown,
            ),
            Text('U shoose ${initDrop}'),
          ],
        ),
      ),
    );
  }
}
