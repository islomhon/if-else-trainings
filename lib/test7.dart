import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({super.key});

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  TextEditingController _yearController = TextEditingController();
  String message = '';

  void calculateAge() {
    int? birthYear = int.tryParse(_yearController.text.trim());
    int currentYear = DateTime.now().year;
    
    if (birthYear == null || birthYear > currentYear || birthYear < 1900) {
      setState(() => message = 'Iltimos, togri yil kiriting!');
      return;
    }

    int age = currentYear - birthYear;

    if (age < 18) {
      setState(() => message = 'Siz hali voyaga yetmagansiz! ($age yosh)');
    } else {
      setState(() => message = 'Siz voyaga yetgansiz! ($age yosh)');
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
              controller: _yearController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tugilgan yilingizni kiriting',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: calculateAge,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  'Hisoblash',
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
