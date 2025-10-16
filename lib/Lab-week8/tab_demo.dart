import 'package:flutter/material.dart';

class TabDemo extends StatefulWidget {
  const TabDemo({super.key});

  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> {
  String msg1 = 'Home';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab demo'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.train), text: 'Train'),
              Tab(icon: Icon(Icons.directions_bike_outlined), text: 'Bike'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.amber,
              child: Text(msg1, style: TextStyle(fontSize: 25)),
            ),
            Container(
              color: Colors.green,
              child: Icon(Icons.access_alarm_rounded, color: Colors.white),
            ),
            Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        msg1 = 'Change!';
                      });
                    },
                    child: Text('OK'),
                  ),
                  FilledButton(onPressed: () {}, child: Text('data')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
