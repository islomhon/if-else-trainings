import 'package:flutter/material.dart';

class M extends StatefulWidget {
  const M({super.key});

  @override
  State<M> createState() => _MState();
}

class _MState extends State<M> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void login() {
    String email = _emailController.text;
    String password = _passwordController.text;
    
    if (email == 'krypt0n@gmail.com' && password == 'krypton_god') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => tekshirish_sahifasi()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('email yoki parol notogri!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    label: Text('email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  label: Text('password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                login();
              },
              child: Container(
                width: 100,
                height: 40,
                child: Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                )),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}



class tekshirish_sahifasi extends StatefulWidget {
  const tekshirish_sahifasi({super.key});

  @override
  State<tekshirish_sahifasi> createState() => _tekshirish_sahifasiState();
}

class _tekshirish_sahifasiState extends State<tekshirish_sahifasi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('tabriklayman sz logindan muvafaqiyatli otdingiz!'),
      ),
    );
  }
}