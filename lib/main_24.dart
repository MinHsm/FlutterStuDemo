import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, //让程序和手机的刷新频率统一
        duration: const Duration(seconds: 1),
        lowerBound: 0.5,
        upperBound: 1);
    _controller.addListener(() {
      print(_controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _controller.forward();
          // _controller.stop();
          // _controller.reset();
          _controller.repeat();
          // _controller.reverse();
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("RotationTransition"),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          FadeTransition(
            opacity: _controller,
            child: const FlutterLogo(
              size: 120,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: const Text("forward")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse(); //倒序播放一次
                  },
                  child: const Text("Reverse")),
              ElevatedButton(
                  onPressed: () {
                    _controller.stop(); //停止播放
                  },
                  child: const Text("stop")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reset(); //重置
                  },
                  child: const Text("reset")),
            ],
          )
        ],
      )),
    );
  }
}

class MyRotationTransition extends StatefulWidget {
  const MyRotationTransition({super.key});

  @override
  State<MyRotationTransition> createState() => _MyRotationTransitionState();
}

class _MyRotationTransitionState extends State<MyRotationTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 1)); //让程序和手机的刷新频率统一
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _controller.forward();
          // _controller.stop();
          // _controller.reset();
          _controller.repeat();
          // _controller.reverse();
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("RotationTransition"),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          RotationTransition(
            turns: _controller,
            child: const FlutterLogo(
              size: 60,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: const Text("forward")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse(); //倒序播放一次
                  },
                  child: const Text("Reverse")),
              ElevatedButton(
                  onPressed: () {
                    _controller.stop(); //停止播放
                  },
                  child: const Text("stop")),
              ElevatedButton(
                  onPressed: () {
                    _controller.reset(); //重置
                  },
                  child: const Text("reset")),
            ],
          )
        ],
      )),
    );
  }
}
