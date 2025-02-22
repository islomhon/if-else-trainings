import 'package:flutter/material.dart';

class ImageTestScreen extends StatefulWidget {
  const ImageTestScreen({super.key});

  @override
  State<ImageTestScreen> createState() => _ImageTestScreenState();
}

class _ImageTestScreenState extends State<ImageTestScreen> {
  String imagePath = 'assets/default.png';
  final TextEditingController _text = TextEditingController();
  String error = 'images not found';
  void updateImage() {
    String input = _text.text.trim();
    setState(() {
      switch (input) {
        case '0':
          imagePath = 'assets/0.png';
          break;
        case '1':
          imagePath = 'assets/1.png';
          break;
        case '2':
          imagePath = 'assets/2.png';
          break;
        case '3':
          imagePath = 'assets/3.png';
          break;
        case '4':
          imagePath = 'assets/4.png';
          break;
        case '5':
          imagePath = 'assets/5.png';
          break;
        case '6':
          imagePath = 'assets/6.png';
          break;
        case '7':
          imagePath = 'assets/7.png';
          break;
        case '8':
          imagePath = 'assets/8.png';
          break;
        case '9':
          imagePath = 'assets/9.png';
          break;
        default:
          imagePath = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                  ),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  controller: _text,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Switch number'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onSubmitted: (value) => updateImage(),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: updateImage,
                child: Container(
                  width: 130,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Search Image',style: TextStyle(color: Colors.white),))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
