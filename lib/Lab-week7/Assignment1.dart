import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  String dateF = '';
  String dateT = '';
  DateTime? dtF, dtT;

  @override
  void initState() {
    super.initState();
    dtF = DateTime.now();
    dtT = DateTime.now();
    dateF = '${dtF!.day}/${dtF!.month}/${dtF!.year}';
    dateT = '${dtT!.day}/${dtT!.month}/${dtT!.year}';
  }

  void pickDateFrom() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: dtF ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().month + 1),
    );

    if (pickedDate != null) {
      setState(() {
        dtF = pickedDate;
        dateF = '${dtF!.day}/${dtF!.month}/${dtF!.year}';
        if (dtF!.isAfter(dtT!)) {
          dtT = dtF;
          dateT = '${dtT!.day}/${dtT!.month}/${dtT!.year}';
        }
      });
    }
  }

  void pickDateTo() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: dtT ?? DateTime.now(),
      firstDate: dtF!,
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (pickedDate != null) {
      setState(() {
        dtT = pickedDate;
        dateT = '${dtT!.day}/${dtT!.month}/${dtT!.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DatePicker Demo', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Row(
                children: [
                  FilledButton.icon(
                    icon: Icon(Icons.calendar_today),
                    onPressed: pickDateFrom,
                    label: Text('From'),
                  ),
                  SizedBox(width: 10),
                  Text(dateF),
                ],
              ),
              Row(
                children: [
                  FilledButton.icon(
                    icon: Icon(Icons.calendar_today),
                    onPressed: pickDateTo,
                    label: Text('To'),
                  ),
                  SizedBox(width: 10),
                  Text(dateT),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
