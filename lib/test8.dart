import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController _ageController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String message = '';

  void checkRegistration() {
    int? age = int.tryParse(_ageController.text.trim());
    String password = _passwordController.text.trim();

    if (age == null || age < 0) {
      setState(() => message = 'Iltimos, togri yosh kiriting!');
      return;
    }

    if (age >= 18 && password.length >= 8) {
      setState(() => message = 'Siz royxatdan muvaffaqiyatli otdingiz!');
    } else {
      setState(() => message = 'Siz royxatdan ota olmaysiz!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Parol 8ta sondan iborat boliw kerak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TextField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Yoshingizni kiriting',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Parolingizni kiriting',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: checkRegistration,
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
