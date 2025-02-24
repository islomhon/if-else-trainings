import 'package:flutter/material.dart';

class EvenOddChecker extends StatefulWidget {
  const EvenOddChecker({super.key});

  @override
  State<EvenOddChecker> createState() => _EvenOddCheckerState();
}

class _EvenOddCheckerState extends State<EvenOddChecker> {
  TextEditingController _numberController = TextEditingController();
  String message = '';

  void checkEvenOdd() {
    int? number = int.tryParse(_numberController.text.trim());

    if (number == null) {
      setState(() => message = 'Iltimos, togri son kiriting :(');
      return;
    }

    if (number % 2 == 0) {
      setState(() => message = 'Bu juft son');
    } else {
      setState(() => message = 'Bu toq son');
    }
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
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Son kiriting',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
           InkWell(
              onTap: checkEvenOdd,
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
