import 'package:flutter/material.dart';
import '../../tools/keepAliveWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    //监听——tabController的改变事件
    _tabController.addListener(() {
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index); //获取点击或滑动页面的索引值
      }
    });
  }

  //组件销毁时触发
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //销毁_tabController
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 30,
              child: TabBar(
                labelStyle: const TextStyle(fontSize: 14),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: Colors.red,
                //底部指示器颜色
                labelColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black,
                //label未选中的颜色
                controller: _tabController,
                //只能监听点击事件，没法监听滑动事件
                onTap: (index) {
                  print(index);
                },
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
                    child: Text("新闻"),
                  ),
                  Tab(
                    child: Text("娱乐"),
                  ),
                  Tab(
                    child: Text("篮球"),
                  ),
                  Tab(
                    child: Text("运动"),
                  ),
                  Tab(
                    child: Text("综艺"),
                  ),
                ],
              ),
            )),
      ),
      body: TabBarView(controller: _tabController, children: [
        KeepAliveWrapper(
            child: ListView(
          children: const [
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表1"),
            ),
            ListTile(
              title: Text("我是关注列表123452342341"),
            ),
          ],
        )),
        const Text("我是热门"),
        const Text("我是视频"),
        const Text("我是新闻"),
        const Text("我是娱乐"),
        const Text("我是篮球"),
        const Text("我是运动"),
        const Text("我是综艺"),
      ]),
    );
  }
}
