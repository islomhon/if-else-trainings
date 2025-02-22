import 'package:flutter/material.dart';
import 'package:if_else/test1.dart';
import 'package:if_else/test2.dart';
import 'package:if_else/test3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      home: Containers()
        
    );
  }
}