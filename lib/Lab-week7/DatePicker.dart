import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  String date = '';
  String time = '';
  void ShowCalendar() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year, 10, 1),
      lastDate: DateTime(DateTime.now().year, 10, 31),
    );
    setState(() {
      if (dt != null) {
        date = '${dt.day}/${dt.month}/${dt.year}';
      } else {
        date = 'Pls select date';
      }
    });
  }

  void showTime() async {
    TimeOfDay? timedate = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      if (timedate != null) {
        time = '${timedate.hour} : ${timedate.minute}';
      } else {
        time = 'Pls select time';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(date),
            FilledButton.icon(
              onPressed: ShowCalendar,
              icon: Icon(Icons.calendar_today),
              label: Text('Select'),
            ),
            SizedBox(height: 20),
            Text(time),
            FilledButton.icon(
              onPressed: showTime,
              icon: Icon(Icons.lock_clock),
              label: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
