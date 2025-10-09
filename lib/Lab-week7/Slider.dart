import 'package:flutter/material.dart';

class sdl extends StatefulWidget {
  const sdl({super.key});

  @override
  State<sdl> createState() => _sdlState();
}

class _sdlState extends State<sdl> {
  //state variable
  double initSlider = 0.5;
  double initSlider2 = 50;

  //Method to update slider
  void updateSlider(double? value) {
    setState(() {
      initSlider = value!;
    });
  }

  //Method to update slider2
  void updateSlider2(double? value) {
    setState(() {
      initSlider2 = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Default Slider, ${initSlider}'),
            Slider(
              value: initSlider,
              divisions: 10,
              label: initSlider.toString(),
              onChanged: updateSlider,
            ),
            SizedBox(height: 20),
            Text('Default Slider, ${initSlider2.round()}'),
            Slider(
              min: 0,
              max: 100,
              value: initSlider2,
              divisions: 10,
              label: initSlider2.round().toString(),
              onChanged: updateSlider2,
            ),
          ],
        ),
      ),
    );
  }
}
