import 'package:flutter/material.dart';
import 'package:flutter_01/pages/tabs.dart';

class Register3page extends StatefulWidget {

  const Register3page({super.key});

  @override
  State<Register3page> createState() => _Register3pageState();
}

class _Register3pageState extends State<Register3page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册页面3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("注册页面3"),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Tabs(index: 4,);
                      },
                    ),
                    (router) => false,
                  );
                },
                child: const Text("完成注册"))
          ],
        ),
      ),
    );
  }
}
