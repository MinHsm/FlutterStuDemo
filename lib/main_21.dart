import 'package:flutter/material.dart';
import 'package:flutter_01/main_15.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Hello,Flutter")),
      body: const MyApp(),
    ),
  ));
}

//代码块 stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> list = [];

  final GlobalKey _globalKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //获取 currentState Widget的属性
            var boxState = _globalKey1.currentState as _BoxState;
            print(boxState._count);
            setState(() {
              boxState._count++;
            });
            //调用currentState Widget的方法
            boxState.run();
            //获取子Widget
            var boxWidget = _globalKey1.currentWidget as Box;
            print(boxWidget.color);
            //获取子组件渲染的属性
            var renderBox =
                _globalKey1.currentContext!.findRenderObject() as RenderBox;
            print(renderBox.size);
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
          child: Box(key: _globalKey1, color: Colors.red),
        ));
  }
}

//子Widget
class Box extends StatefulWidget {
  final Color color;

  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  void run() {
    print("boxState Run");
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(widget.color)),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: Text(
            "$_count",
            style: Theme.of(context).textTheme.headlineLarge,
          )),
    );
  }
}
