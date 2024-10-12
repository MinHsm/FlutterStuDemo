import 'package:flutter/material.dart';

class News2Page extends StatefulWidget {
  const News2Page({super.key});

  @override
  State<News2Page> createState() => _News2PageState();
}

class _News2PageState extends State<News2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新闻页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("登录跳转演示，执行登录后返回上一个页面"),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("执行登录"))
          ],
        ),
      ),
    );
  }
}
