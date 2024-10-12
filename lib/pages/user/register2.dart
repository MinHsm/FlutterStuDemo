import 'package:flutter/material.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({super.key});

  @override
  State<Register2Page> createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册页面2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册页面2"),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  //命名路由跳转
                  // Navigator.pushNamed(context, "/register3");
                  //替换路由跳转
                  Navigator.of(context).pushReplacementNamed("/register3");

                },
                child: const Text("下一步"))
          ],
        ),
      ),
    );
  }
}
