import 'package:flutter/material.dart';

//yangicha va kam kodlar bn qildim😎😎
class Containers extends StatefulWidget {
  const Containers({super.key});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  int selectedIndex = -1;

  Color getColor(int index) {
    if (selectedIndex == index) {
      return Colors.black;
    } else {
      return Colors.grey;
    }
  }

  void ontap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) {
              return InkWell(
                onTap: () {
                  ontap(index);
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      color: getColor(index),
                      borderRadius: BorderRadius.circular(30)),
                ),
              );
            })),
      ),
    );
  }
}
