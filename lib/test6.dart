import 'package:flutter/material.dart';

class TemperatureAdvice extends StatefulWidget {
  const TemperatureAdvice({super.key});

  @override
  State<TemperatureAdvice> createState() => _TemperatureAdviceState();
}

class _TemperatureAdviceState extends State<TemperatureAdvice> {
  TextEditingController _tempController = TextEditingController();
  String message = '';

  void checkTemperature() {
    double? temp = double.tryParse(_tempController.text.trim());

    if (temp == null) {
      setState(() => message = 'Iltimos, togri harorat kiriting :(');
      return;
    }

    if (temp >= 30) {
      setState(() => message = 'Juda issiq, koproq suv iching!');
    } else if (temp >= 20) {
      setState(() => message = 'Ob-havo yaxshi, sayr qilish mumkin.');
    } else if (temp >= 10) {
      setState(() => message = 'Havo salqin, kiyimingizni togri tanlang.');
    } else {
      setState(() => message = 'Juda sovuq, issiqroq kiyinib oling!');
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
              controller: _tempController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Haroratni kiriting (°C)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: checkTemperature,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  'Tekshirish',
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
