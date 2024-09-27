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
          body: const HorListView()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: <Widget>[
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("标题标题标题标题,标题标题标题"),
          subtitle: const Text("二级标题二级标题二级标题,二级标题二级标题"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("标题标题标题标题,标题标题标题"),
          subtitle: const Text("二级标题二级标题二级标题,二级标题二级标题"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("标题标题标题标题,标题标题标题"),
          subtitle: const Text("二级标题二级标题二级标题,二级标题二级标题"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text("标题标题标题标题,标题标题标题"),
          subtitle: const Text("二级标题二级标题二级标题,二级标题二级标题"),
        ),
        const Divider(),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "我是一个标题",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        )
      ],
    );
  }
}

class HorListView extends StatelessWidget {
  const HorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal, //水平列表
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            height: 120, //高度自适应，水平列表设置没有效果
            width: 120, //宽度自适应，垂直列表设置没有效果
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("文字")
              ],
            ),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.amberAccent),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
