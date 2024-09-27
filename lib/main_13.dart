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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton");
              },
              child: const Text("普通按钮"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("文本按钮"),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text("边框按钮"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text("发送"),
            ),
            TextButton.icon(
              onPressed: () {},
              label: const Text("消息"),
              icon: const Icon(Icons.info),
            ),
            OutlinedButton.icon(
              onPressed: null,
              label: const Text("增加"),
              icon: const Icon(Icons.add),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                  foregroundColor: WidgetStateProperty.all(Colors.black)),
              onPressed: () {
                print("ElevatedButton");
              },
              child: const Text("普通按钮"),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("大按钮"),
              ),
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search),
                label: const Text("搜索"),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.redAccent),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: const Text("登录"),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )),
              ),
              onPressed: () {},
              child: const Text("圆角按钮"),
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(const CircleBorder(
                      side: BorderSide(color: Colors.yellow))),
                ),
                onPressed: () {},
                child: const Text("圆角"),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      const BorderSide(width: 2, color: Colors.redAccent))),
              onPressed: () {},
              child: const Text("带边框的按钮"),
            )
          ],
        )
      ],
    );
  }
}
