import 'package:flutter/material.dart';
import './m_font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter app")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        Icon(
          Icons.home,
          color: Colors.red,
        ),
        SizedBox(height: 40),
        Icon(Icons.settings),
        SizedBox(height: 40),
        Icon(Icons.search),
        SizedBox(height: 40),
        Icon(Icons.personal_injury_outlined),
        SizedBox(height: 40),
        Icon(
          Icons.category,
          size: 60,
          color: Colors.yellow,
        ),
        SizedBox(
          height: 40,
        ),
        Icon(
          ItyingIcon.book,
          size: 60,
          color: Colors.orange,
        ),
        SizedBox(height: 40),
        Icon(
          ItyingIcon.shop,
          size: 60,
          color: Colors.amberAccent,
        ),
        SizedBox(
          height: 40,
        ),
        Icon(
          ItyingIcon.wechat,
          size: 60,
          color: Colors.green,
        ),
        SizedBox(
          height: 40,
        ),
        Icon(
          ItyingIcon.wechat,
          size: 60,
          color: Colors.green,
        ),
        SizedBox(
          height: 40,
        ),
        Icon(
          ItyingIcon.wechat,
          size: 60,
          color: Colors.green,
        )
      ],
    );
  }
}
