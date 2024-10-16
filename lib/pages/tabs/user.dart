import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            print("执行跳转");
            Navigator.pushNamed(context, "/news2");
          }, child: const Text("登录")),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/register1");
          }, child: const Text("注册"))
        ],
      ),
    );
  }
}
