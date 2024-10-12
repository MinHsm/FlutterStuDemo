import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数，当组件初始化时候触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print("左侧的按钮图标");
          },
        ),
        backgroundColor: Colors.red,
        title: const Text("Flutter App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("搜索图标");
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              print("左侧的更多图标");
            },
          ),
        ],
        //配置controller需要去掉const属性
        bottom: TabBar(
          tabAlignment: TabAlignment.start,
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.white,
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          labelStyle: const TextStyle(fontSize: 12),
          indicatorPadding: const EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.label,
          // indicator: BoxDecoration(
          //   color: Colors.blue,
          //   borderRadius: BorderRadius.circular(10),
          // ),
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: const [
            ListTile(
              title: Text("我是关注列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是热门列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是视频列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是关注列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是热门列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是视频列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是关注列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是热门列表"),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("我是视频列表"),
            )
          ],
        )
      ]),
    );
  }
}
