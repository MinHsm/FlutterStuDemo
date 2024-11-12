import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_01/pages/widget/image.dart';

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;

  const Swiper(
      {super.key,
      this.height = 200,
      this.width = double.infinity,
      required this.list});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentIndex = 0;
  List<Widget> pageList = [];
  late PageController _pageController;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < widget.list.length; i++) {
      pageList.add(ImagePage(
        width: widget.width,
        height: widget.height,
        src: widget.list[i],
      ));
    }

    _pageController = PageController(initialPage: 0);

    timer = Timer.periodic(const Duration(seconds: 5), (t) {
      _pageController.animateToPage(
        (_currentIndex + 1) % pageList.length,
        duration: const Duration(microseconds: 200),
        curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          // child: PageView(children: list),
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index % widget.list.length;
                });
              },
              itemCount: 1000,
              itemBuilder: (context, index) {
                return pageList[index % pageList.length]; //index的值是0-1000
              }),
        ),
        Positioned(
            left: 0,
            bottom: 2,
            right: 0, //设置left0 right0 就会占满整行
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pageList.length, (index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(5),
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ))
      ],
    );
  }
}
