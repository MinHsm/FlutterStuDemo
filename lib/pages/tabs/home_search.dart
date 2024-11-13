import 'package:flutter/material.dart';
import 'package:flutter_01/pages/form.dart';
import 'package:flutter_01/pages/news.dart';
import 'package:flutter_01/pages/search.dart';

class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({super.key});

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends State<HomeSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //跳转路由
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SearchPage();
              }));
            },
            child: const Text("基本路由跳转搜索"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              //跳转路由
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FormPage();
              }));
            },
            child: const Text("表单"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              //跳转路由
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const NewsPage(
                  title: "我是标题",
                  aid: 18,
                );
              }));
            },
            child: const Text("跳转传值"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/news2");
              },
              child: const Text("命名路由跳转news")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/form2",
                  arguments: {"title": "我是命名路由传值", "aid": 20},
                );
              },
              child: const Text("命名路由跳转传值form2")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/shop",
                  arguments: {"title": "我是命名路由传值", "aid": 22},
                );
              },
              child: const Text("命名路由跳转传值shop")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/dialog");
              },
              child: const Text("Dialog演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pageView");
              },
              child: const Text("pageView演示")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pageViewBuilder");
              },
              child: const Text("pageViewBuilder演示")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pageViewFull");
              },
              child: const Text("PageViewFullPage 演示")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pageViewSwiperTime");
              },
              child: const Text("PageViewSwiper 演示")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pageViewKeepAlive");
              },
              child: const Text("PageViewKeepAlive 演示"))
        ],
      ),
    );
  }
}
