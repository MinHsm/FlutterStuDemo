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
        body: const mGreadListData(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];

    for (var i = 0; i < 12; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          "第$i个元素",
          style: const TextStyle(fontSize: 20),
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      //水平之间间距
      mainAxisSpacing: 10,
      //垂直之间间距
      childAspectRatio: 1.2,
      //宽高比
      children: _initGridViewData(),
    );
  }
}

class mGreadTest extends StatelessWidget {
  const mGreadTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      //水平之间间距
      mainAxisSpacing: 10,
      //垂直之间间距
      childAspectRatio: 1.2,
      //宽高比
      maxCrossAxisExtent: 120,
      //横轴子元素的最大长度
      children: const [
        Icon(Icons.pedal_bike),
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }
}

class mGreadListData extends StatelessWidget {
  const mGreadListData({super.key});

  // List<Widget> _initGridViewData() {
  //   var tempList = listData.map((value) {
  //     return Container(
  //       decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
  //       child: Column(
  //         children: [
  //           Image.network(value["imageUrl"]),
  //           const SizedBox(height: 10),
  //           Text(
  //             value["title"],
  //             style: const TextStyle(fontSize: 18),
  //           )
  //         ],
  //       ),
  //     );
  //   });
  //
  //   return tempList.toList();
  // }

  Widget _initGridViewData(context, index) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          const SizedBox(height: 10),
          Text(
            listData[index]["title"],
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: listData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisCount: 2,
        ),
        itemBuilder: _initGridViewData);
  }
}
