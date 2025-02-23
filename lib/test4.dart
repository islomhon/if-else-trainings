import 'package:flutter/material.dart';

class NumberComparisonScreen extends StatefulWidget {
  @override
  _NumberComparisonScreenState createState() => _NumberComparisonScreenState();
}

class _NumberComparisonScreenState extends State<NumberComparisonScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String javob = "";

  void funksiya() {
    double? num1 = double.tryParse(_controller1.text);
    double? num2 = double.tryParse(_controller2.text);

    if (num1 == null || num2 == null) {
      setState(() {
        javob = "Iltimos sonlarni kiriting";
      });
      return;
    }

    setState(() {
      if (num1 > num2) {
        javob = "$num1 katta";
      } else if (num1 < num2) {
        javob = "$num2 katta";
      } else {
        javob = "ikalasi teng";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Birinchi son"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Ikkinchi son"),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: funksiya,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "taqoslaw",
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
            ),
            SizedBox(height: 20),
            Text(
              javob,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
