import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  const Design2({super.key});

  @override
  State<Design2> createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  List<Color> darkBgColors = [
    const Color(0xFF0D1441),
    const Color(0xFF283584),
    const Color(0xFF376AB2),
  ];
  List<Color> lightBgColors = [
    const Color(0xFF8C2480),
    const Color(0xFFCE587D),
    const Color(0xFFFF9485),
  ];
  @override
  Widget build(BuildContext context) {
    //compute screen size
    Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();

    return Scaffold(
      body: Container(
        // // full screen
        // width: double.infinity,
        // height: double.infinity,
        // for if resize the screen
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: now.hour < 18 ? lightBgColors : darkBgColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),

                    Text(
                      now.hour < 18 ? 'Good Morning' : 'Good Evening',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Please sign in below',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 50),
                    Text('email', style: TextStyle(color: Colors.white)),
                    TextField(
                      decoration: InputDecoration(hint: Text('Username')),
                    ),
                    Text('email', style: TextStyle(color: Colors.white)),
                    TextField(
                      decoration: InputDecoration(hint: Text('Username')),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/images/landscape.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
