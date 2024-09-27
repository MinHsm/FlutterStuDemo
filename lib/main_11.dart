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
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter app")),
        body: const mAlign(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size = MediaQuery.of(context).size;

    // return Container(
    //   height: 400,
    //   width: 300,
    //   color: Colors.red,
    //   child: Stack(
    //     children: [
    //       Positioned(
    //           left: 0,
    //           bottom: 0,
    //           child: Container(
    //             height: 100,
    //             width: 100,
    //             color: Colors.yellow,
    //           )),
    //       const Positioned(
    //         right: 0,
    //         top: 190,
    //         child: Text("你好flutter"),
    //       )
    //     ],
    //   ),
    // );

    return Stack(
      children: [
        ListView(
          // padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
            ListTile(title: Text("列表1")),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            //配置子元素的宽度和高度
            height: 44,
            //配置子元素的宽度和高度
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.black,
                      child: const Text(
                        "二级导航",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}

class mAlign extends StatelessWidget {
  const mAlign({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 300,
    //   height: 300,
    //   color: Colors.red,
    //   child: const Align(
    //   alignment: Alignment.center,
    //   child: Text("你好flutter"),
    // ),);

    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text("收藏"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("购买"),
              )
            ],
          ),
        )
      ],
    );
  }
}
