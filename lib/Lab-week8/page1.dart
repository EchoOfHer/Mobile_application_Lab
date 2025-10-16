import 'package:flutter/material.dart';
import 'package:lab_4aug/Lab-week8/page2.dart';
import 'Fruit.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Container(
        alignment: Alignment.topCenter,
        child: FilledButton(
          onPressed: () {
            // jump to Page2
            Navigator.push(
              context,
              // MaterialPageRoute(
              //   builder: (context) => Page2(),
              //   settings: RouteSettings(
              //     arguments: <String, dynamic>{
              //       'name': 'apple',
              //       'price': 15,
              //       'date': ['10 Oct', '19 Oct'],
              //       //or any variable
              //     },
              //   ),
              // ),
              //----> Constructor
              // MaterialPageRoute(
              //   builder: (context) =>
              //       Page2(name: 'apple', price: 15, date: ['10 Oct', '19 Oct']),
              // ),
              MaterialPageRoute(
                builder: (context) =>
                    Page2(fruit: Fruit('apple', 30, ['10 Oct', '19 Oct'])),
              ),
            ); // Correctly pushes Page2 onto the stack
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
