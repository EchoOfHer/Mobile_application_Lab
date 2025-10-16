import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    //recieve argument from previos page
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Column(
        children: [
          Text(data['name']),
          Text('${data['price']}'),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
    ;
  }
}
