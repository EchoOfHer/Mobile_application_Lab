import 'dart:ffi';
import 'dart:ui';

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
  String image = '';
  String SelectedCoff = '';
  String status = "";
  int price = 0;
  int gValue = 0;

  var coffee = [
    {
      'name': 'Latte',
      'price': 35,
      'image':
          'https://coffeeclub.com.au/cdn/shop/files/2024_MAY_MENU_1200x1200px7.jpg?v=1716963237',
    },
    {
      'name': 'Americano',
      'price': 30,
      'image':
          'https://emilylaurae.com/wp-content/uploads/2022/09/iced-americano-6.jpg',
    },
    {
      'name': 'Cappuccino',
      'price': 40,
      'image':
          "https://dairyfarmersofcanada.ca/sites/default/files/image_file_browser/conso_recipe/2022/Capuccino.jpg",
    },
  ];
  Widget coffeeWidget() {
    List<Widget> coffeeRadio = [];
    for (int i = 0; i < coffee.length; i++) {
      coffeeRadio.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio<int>(
              value: i,
              groupValue: gValue,
              onChanged: changeRadio,
              visualDensity: VisualDensity.compact,
            ),
            Text(
              '${coffee[i]['name']} ${coffee[i]['price']}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 10),
          ],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: coffeeRadio,
    );
  }

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

  void changeRadio(int? value) {
    setState(() {
      gValue = value!;
    });
  }

  void ordering() {
    setState(() {
      status = '';
      //type
      type = (swType != true) ? 'Hot' : 'Cold';
      //price
      dynamic priceVal = coffee[gValue]['price'];
      if (priceVal is int) {
        // price = priceVal;
        price = (type == 'Hot') ? priceVal : priceVal + 5;
      } else {
        price = int.tryParse(priceVal) ?? 0;
      }

      //coffee
      SelectedCoff = coffee[gValue]['name'] as String;
      //picture
      image = coffee[gValue]['image'] as String;

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
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(image),
              SizedBox(height: 20),
              Text(
                '${type} $SelectedCoff with ${sugar} sugar. Price = $price bath',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancle'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        status = 'Thank you for your order!';
                      });
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            ],
          ),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Coffee',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            coffeeWidget(),
            Row(
              children: [
                Text(
                  'Type',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Hot', style: TextStyle(fontSize: 16)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Switch(value: swType, onChanged: drinkingType),
                ),
                Text('Cold(+5)', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Sugar',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('None', style: TextStyle(fontSize: 16)),
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
            SizedBox(height: 20),
            Text(status, style: TextStyle(color: Colors.red, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
