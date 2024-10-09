import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//代码块 stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

//有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //改变数据必须加上
          setState(() {
            _list.add("我是一个新增的列表");
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: _list.map((v) {
          return ListTile(
            title: Text(v),
          );
        }).toList(),
      ),
    );
  }
}
