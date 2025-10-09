import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool swType = false;
  double sugarSlider = 1;
  String sugar = '';
  String type = '';
  void sugarLev(value) {
    setState(() {
      sugarSlider = value;
    });
  }

  void drinkingType(bool? status) {
    setState(() {
      swType = status!;
    });
  }

  void ordering() {
    setState(() {
      //type
      type = (swType != true) ? 'Hot' : 'Cold';
      //sugar level
      sugar = (sugarSlider == 0)
          ? 'no'
          : (sugarSlider == 1)
          ? 'normal'
          : 'less';
    });
    showAlert(context);
  }

  void showAlert(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your order'),
          content: Text('${type} coffee with ${sugar} sugar'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffee Shop', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text('Your order', style: TextStyle(fontSize: 30)),
              ),
            ),
            Row(
              children: [
                Text('Type', style: TextStyle(fontSize: 16)),
                Spacer(),
                Text('Hot', style: TextStyle(fontSize: 16)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Switch(value: swType, onChanged: drinkingType),
                ),
                Text('Cold', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Sugar level', style: TextStyle(fontSize: 16)),
                Slider(
                  value: sugarSlider,
                  divisions: 2,
                  label: (sugarSlider < 0.5)
                      ? 'none'
                      : (sugarSlider == 0.5)
                      ? 'less'
                      : 'normal',
                  onChanged: sugarLev,
                ),
                SizedBox(width: 10),
                Text('Normal', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: ordering,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text(
                'order'.toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
