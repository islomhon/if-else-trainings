import 'package:flutter/material.dart';

class WeekdayFinder extends StatefulWidget {
  const WeekdayFinder({super.key});

  @override
  State<WeekdayFinder> createState() => _WeekdayFinderState();
}

class _WeekdayFinderState extends State<WeekdayFinder> {
  TextEditingController _dayController = TextEditingController();
  String message = '';

  void findWeekday() {
    int? dayNumber = int.tryParse(_dayController.text.trim());
    if (dayNumber == null || dayNumber < 1 || dayNumber > 7) {
      setState(() => message = 'Iltimos 1 dan 7 gacha son kiriting');
      return;
    }

    if (dayNumber == 1) {
      message = 'Dushanba';
    } else if (dayNumber == 2) {
      message = 'Seshanba';
    } else if (dayNumber == 3) {
      message = 'Chorshanba';
    } else if (dayNumber == 4) {
      message = 'Payshanba';
    } else if (dayNumber == 5) {
      message = 'Juma';
    } else if (dayNumber == 6) {
      message = 'Shanba';
    } else if (dayNumber == 7) {
      message = 'Yakshanba';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _dayController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'son kiriting',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
             InkWell(
              onTap: findWeekday,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  'Tekshiriw',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
