import 'package:flutter/material.dart';
import 'package:flutter_01/tools/keepAliveWrapper.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("keepAlive"),
      ),
      body: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return KeepAliveWrapper(
              child: MyContainer(num: index),
            );
          }),
    );
  }
}

//自定义组件
class MyContainer extends StatefulWidget {
  final int num;

  const MyContainer({super.key, required this.num});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print(widget.num); //默认数据是没有缓存的
    return Center(
      child: Text(
        "第${widget.num}屏",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //true表示缓存页面
}
