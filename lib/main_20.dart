import 'package:flutter/material.dart';
import 'package:flutter_01/main_15.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello,Flutter")),
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
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      //常量没法改变要去掉const
      //1，可以保存状态2，可以排序
      Box(
        key: _globalKey1,
        color: Colors.red,
      ),
      Box(
        key: _globalKey2, //唯一值，每次运行的时候会随机生成
        color: Colors.yellow,
      ),
      Box(
        key: _globalKey3,
        color: Colors.blue,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.shuffle(); //打乱list里面元素的顺序
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                )),
    );
  }
}

class Box extends StatefulWidget {
  final Color color;

  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

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
