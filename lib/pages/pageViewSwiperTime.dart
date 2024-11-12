import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_01/pages/widget/swiper.dart';

class PageViewSwiperTime extends StatefulWidget {
  const PageViewSwiperTime({super.key});

  @override
  State<PageViewSwiperTime> createState() => _PageViewSwiperTimeState();
}

class _PageViewSwiperTimeState extends State<PageViewSwiperTime> {
  List<String> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = const [
      "https://www.itying.com/images/flutter/1.png",
      "https://www.itying.com/images/flutter/2.png",
      "https://www.itying.com/images/flutter/3.png",
    ];
    //创建定时器
    Timer t = Timer.periodic(const Duration(seconds: 3), (timer) {
      print("执行");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageViewSwiper"),
        ),
        body: ListView(
          children: [Swiper(list: list)],
        ));
  }
}
