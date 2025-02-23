import 'package:flutter/material.dart';
import 'package:if_else/GridConstants.dart';
import 'package:if_else/test1.dart';
import 'package:if_else/test2.dart';
import 'package:if_else/test3.dart';
import 'package:if_else/test4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('if else mashqlar'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    PageContainer(
                      pageName: 'containers',
                      page: Containers(),
                    ),
                    PageContainer(
                      pageName: 'log in',
                      page: M(),
                    ),
                    PageContainer(
                      pageName: 'number img',
                      page: ImageTestScreen(),
                    ),
                    PageContainer(
                        pageName: 'Comparison', page: NumberComparisonScreen())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
