import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello,Flutter")),
      body: const MyApp(),
    ),
  ));
}

//代码块 stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello,Flutter 我是自定义组件",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.red,
              // color: Color.fromRGBO(244, 244, 123, 1),
              fontSize: 40)),
    );
  }
}

