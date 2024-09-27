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
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter app")),
        body: const oDAtaListView(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initListData() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是一个列表 -- $i"),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}

class oDAtaListView extends StatelessWidget {
  const oDAtaListView({super.key});

  // List<Widget> _initListData() {
  //   List<Widget> tempList = [];
  //
  //   for (var i = 0; i < listData.length; i++) {
  //     tempList.add(ListTile(
  //       leading: Image.network("${listData[i]["imageUrl"]}"),
  //       title: Text("${listData[i]["title"]}"),
  //       subtitle: Text("${listData[i]["author"]}"),
  //     ));
  //   }
  //   return tempList;
  // }

  List<Widget> _initListData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network("${value["imageUrl"]}"),
        title: Text("${value["title"]}"),
        subtitle: Text("${value["author"]}"),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
