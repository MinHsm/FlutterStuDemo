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
      home: const Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text("我是一个列表"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.assignment,
            color: Colors.red,
          ),
          title: Text("全部订单"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Colors.green,
          ),
          title: Text("代付款"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.green,
          ),
          title: Text("我的收藏"),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.black,
          ),
          title: Text("在线客服"),
          trailing: Icon(Icons.chevron_right_sharp),
        )
      ],
    );
  }
}
