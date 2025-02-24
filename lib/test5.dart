import 'package:flutter/material.dart';

class RoleChecker extends StatefulWidget {
  const RoleChecker({super.key});

  @override
  State<RoleChecker> createState() => _RoleCheckerState();
}

class _RoleCheckerState extends State<RoleChecker> {
  TextEditingController _roleController = TextEditingController();
  String message = '';

  void check() {
    String role = _roleController.text.trim().toLowerCase();

    if (role == 'admin') {
      setState(() => message = 'Siz adminsiz');
    } else if (role == 'user') {
      setState(() => message = 'Siz oddiy foydalanuvchisiz');
    } else if (role == 'guest') {
      setState(() => message = 'Siz mehmon foydalanuvchisiz');
    } else {
      setState(() => message = 'Noto‘g‘ri rol kiritildi');
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
              controller: _roleController,
              decoration: InputDecoration(
                labelText: 'Rolni kiriting (admin, user, guest)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: check,
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
            ),
          ],
        ),
      ),
    );
  }
}
