import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF202020);
const Color primaryColor = Color(0xFFFFBD73);

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/images/baking.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'sign in'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'sign up'.toUpperCase(),
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.alternate_email, color: primaryColor),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hint: Text(
                              'Email Address',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.lock_open_sharp, color: primaryColor),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hint: Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Ink(
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.android, color: Colors.grey[600]),
                          ),
                        ),
                        SizedBox(width: 10),
                        Ink(
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message, color: Colors.grey[600]),
                          ),
                        ),
                        Spacer(),
                        Ink(
                          decoration: const ShapeDecoration(
                            color: primaryColor,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: bgColor,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
