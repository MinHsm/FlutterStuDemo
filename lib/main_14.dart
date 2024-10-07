import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter app")),
        body: const LayoutDemo(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return mButton(
      "第一集",
      onPressed: () {},
    );
  }
}

class mButton extends StatelessWidget {
  String text; //按钮文字
  void Function()? onPressed; //方法

  mButton(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(1))),
          backgroundColor:
              WidgetStateProperty.all(const Color.fromARGB(242, 255, 244, 244)),
          foregroundColor: WidgetStateProperty.all(Colors.black45)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              "热搜",
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            mButton("女装", onPressed: () {}),
            mButton("女装", onPressed: () {}),
            mButton("女装", onPressed: () {}),
            mButton("女装", onPressed: () {}),
            mButton("女装", onPressed: () {}),
            mButton("女装", onPressed: () {}),
            mButton("手机", onPressed: () {}),
            mButton("xxxx", onPressed: () {}),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "历史记录",
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
        const Divider(),
        const Column(
          children: [
            ListTile(
              title: Text("女装"),
            ),
            Divider(),
            ListTile(
              title: Text("手机"),
            ),
            Divider(),
            ListTile(
              title: Text("电脑"),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: OutlinedButton.icon(
              style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all(Colors.black45),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)))),
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text("清空历史记录")),
        )
      ],
    );
  }
}
