import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  //state variable
  int radio1 = 9;
  List coolours = ['red', 'green', 'blue'];
  //method to update radioBut
  void updateRadio1(int? val) {
    setState(() {
      radio1 = val!;
    });
  }

  List<Widget> createRadio() {
    // 1
    // List<Widget> radio = [];
    // for (int i = 0; i < coolours.length; i++) {
    //   radio.add(Radio(value: i, groupValue: radio1, onChanged: updateRadio1));
    //   radio.add(Text(coolours[i]));
    // }
    //2
    List<Widget> radios = List.generate(
      coolours.length,
      (index) =>
          Radio(value: index, groupValue: radio1, onChanged: updateRadio1),
    );

    radios.add(SizedBox(width: 20));
    radios.add(Text('U choose ${radio1}'));
    return radios;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [Row(children: createRadio())]),
      ),
    );
  }
}
