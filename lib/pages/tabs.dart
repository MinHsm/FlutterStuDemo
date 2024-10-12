import 'package:flutter/material.dart';
import 'package:flutter_01/pages/tabs/home_search.dart';
import 'package:flutter_01/pages/tabs/message.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class Tabs extends StatefulWidget {
  final int index;

  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List<Widget> _pages = const [
    HomeSearchPage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Flutter App"),
        backgroundColor: Colors.red,
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                      accountName: const Text("Ming"),
                      accountEmail: const Text("Ming@qq.com"),
                      otherAccountsPictures: [
                        Image.network(
                            "https://www.itying.com/images/flutter/1.png"),
                        Image.network(
                            "https://www.itying.com/images/flutter/2.png"),
                        Image.network(
                            "https://www.itying.com/images/flutter/3.png")
                      ],
                      currentAccountPicture: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.itying.com/images/flutter/3.png"),
                      ),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/2.png")))),
                )
              ],
            ),
            const ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //选中的颜色
          fixedColor: Colors.red,
          //设置底部菜单的大小
          iconSize: 35,
          //第几个菜单选中
          currentIndex: _currentIndex,
          //点击菜单触发的方法
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "消息",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "用户",
            )
          ]),
      floatingActionButton: Container(
        height: 75,
        width: 75,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(35),
        ),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      //配置浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
