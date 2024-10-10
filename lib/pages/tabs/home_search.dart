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
            child: const Text("搜索"),
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
        ],
      ),
    );
  }
}
