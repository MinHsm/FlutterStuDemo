import 'package:flutter/material.dart';

//其他页面跳转到Form页面进行命名路由传值
class Form2Page extends StatefulWidget {
  final Map arguments;

  const Form2Page({super.key, required this.arguments});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {

  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单"),
      ),
      body: const Center(
        child: Text("我是表单界面"),
      ),
    );
  }
}
