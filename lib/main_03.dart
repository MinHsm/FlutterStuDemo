import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("hello，flutter")),
        body: const Column(
          children: [
            MyApp(),
            SizedBox(
              height: 20,
            ),
            circular(),
            SizedBox(
              height: 20,
            ),
            ClipImage(),
            SizedBox(
              height: 20,
            ),
            LocalImage()
          ],
        )),
  ));
}

//"https://pic3.zhimg.com/v2-5fb13110e1de13d4c11e6e7f5b8026da_r.jpg"
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.centerRight,
        height: 150,
        width: 150,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          // alignment: Alignment.centerLeft,
          // scale: 2,
          // fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

//实现圆形图片
class circular extends StatelessWidget {
  const circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.itying.com/themes/itying/images/ionic4.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(75)),
    );
  }
}

//实现圆形图片 使用ClipOval
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://www.itying.com/themes/itying/images/ionic4.png",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.asset(
        "images/image2.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
