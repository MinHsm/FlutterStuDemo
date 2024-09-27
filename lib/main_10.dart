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
        body: const mDemoView1(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const Padding(
  //     padding: EdgeInsets.all(10),
  //     child: Text("hello,flutter"),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconContainer(Icons.home, color: Colors.red),
              IconContainer(Icons.search, color: Colors.yellow),
              IconContainer(Icons.ac_unit_sharp, color: Colors.yellow),
            ],
          )),
    );
  }
}

class mFlexView extends StatelessWidget {
  const mFlexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home, color: Colors.red),
        ),
        IconContainer(Icons.deblur, color: Colors.yellow)
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      color: color,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}

class mDemoView1 extends StatelessWidget {
  const mDemoView1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 180,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          height: 180,
                          child: Image.network(
                            "https://www.itying.com/images/flutter/2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}
