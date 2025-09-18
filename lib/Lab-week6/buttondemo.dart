import 'package:flutter/material.dart';

class Buttondemo extends StatelessWidget {
  const Buttondemo({super.key});
  //widget
  Widget createIconButton() {
    return OverflowBar(
      alignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            debugPrint('Vollume Up');
          },
          icon: Icon(Icons.volume_up, color: Colors.red),
        ),
        Ink(
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.blue,
          ),

          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.android, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget CreateOutlineButton() {
    return OverflowBar(
      children: [
        OutlinedButton(onPressed: () {}, child: Text('OutlineButton')),
        SizedBox(width: 8),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            backgroundColor: Colors.amber,
          ),
          child: Text('OutlineButton'),
        ),
      ],
    );
  }

  Widget CreateButtons() {
    return OverflowBar(
      children: [
        TextButton(onPressed: () {}, child: Text('Text Button')),
        ElevatedButton(onPressed: () {}, child: Text('Elavate button')),
        FilledButton(onPressed: () {}, child: Text('Filled button')),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(backgroundColor: Colors.blue),
          child: Text('Filled button'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            createIconButton(),
            Divider(),
            CreateOutlineButton(),
            Divider(),
            CreateButtons(),
          ],
        ),
      ),
    );
  }
}
