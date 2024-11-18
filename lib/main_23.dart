import 'dart:async';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
          child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 220,
              color: Colors.yellow,
              child: AnimatedSwitcher(
                //当子元素改变的时候会触发动画
                transitionBuilder: ((child, animation) {
                  //可改变动画效果
                  return ScaleTransition(
                    scale: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                }),
                duration: const Duration(seconds: 1),
                child: flag
                    ? const CircularProgressIndicator()
                    : Image.network(
                        "https://www.itying.com/images/flutter/1.png",
                        fit: BoxFit.cover,
                      ),
              )),
        ));
  }
}

class MyAniPositioned extends StatefulWidget {
  const MyAniPositioned({super.key});

  @override
  State<MyAniPositioned> createState() => _MyAniPositionedState();
}

class _MyAniPositionedState extends State<MyAniPositioned> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Stack(
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
                ListTile(
                  title: Text("我是一个列表"),
                ),
              ],
            ),
            AnimatedPositioned(
                curve: Curves.linear,
                right: flag ? 10 : 300,
                top: flag ? 10 : 500,
                duration: const Duration(seconds: 1, milliseconds: 500),
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ))
          ],
        ));
  }
}

class MyAniOpacity extends StatefulWidget {
  const MyAniOpacity({super.key});

  @override
  State<MyAniOpacity> createState() => _MyAniOpacityState();
}

class _MyAniOpacityState extends State<MyAniOpacity> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
          child: AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: flag ? 0.2 : 1,
            curve: Curves.easeIn,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ));
  }
}

class MyAniPadding extends StatefulWidget {
  const MyAniPadding({super.key});

  @override
  State<MyAniPadding> createState() => _MyAniPaddingState();
}

class _MyAniPaddingState extends State<MyAniPadding> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: AnimatedPadding(
        curve: Curves.bounceOut,
        duration: const Duration(seconds: 2),
        padding: EdgeInsets.fromLTRB(10, flag ? 10 : 400, 0, 0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}

class MyListPage extends StatefulWidget {
  const MyListPage({super.key});

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                flag = !flag;
              });
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text("Title"),
          ),
          body: Stack(
            children: [
              ListView(
                children: const [
                  ListTile(
                    title: Text("我是一个列表"),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: AnimatedContainer(
              duration: const Duration(seconds: 1, milliseconds: 100),
              width: 200,
              height: double.infinity,
              transform: flag
                  ? Matrix4.translationValues(-200, 0, 0)
                  : Matrix4.translationValues(0, 0, 0),
              color: Colors.yellow,
            ))
      ],
    );
  }
}
