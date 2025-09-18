import 'package:flutter/material.dart';
import 'dart:async';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  String message = 'Start';
  @override
  //start at app start b4 create ui
  void initState() {
    // TODO: implement initState
    super.initState();
    //dreate a coutdown timer
    // Timer(Duration(seconds: 3), () {
    //   setState(() {
    //     message = 'stop';
    //   });
    // });
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        message = 'Stop';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(message, style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
