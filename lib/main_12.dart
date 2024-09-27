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
        body: const mCardListDataView(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return AspectRatio(
    //   aspectRatio: 2 / 1,
    //   child: Container(
    //     color: Colors.red,
    //   ),);

    return ListView(
      children: [
        Card(
          shape: RoundedRectangleBorder(
              //阴影效果
              borderRadius: BorderRadius.circular(10)),
          elevation: 10, //阴影深度
          child: const Column(
            children: [
              ListTile(
                title: Text(
                  "Ming",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("中山技师学生"),
              ),
              Divider(),
              ListTile(
                title: Text("电话:1028375628"),
              ),
              ListTile(
                title: Text("地址：广东中山"),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          shape: RoundedRectangleBorder(
              //阴影效果
              borderRadius: BorderRadius.circular(10)),
          elevation: 10, //阴影深度
          child: const Column(
            children: [
              ListTile(
                title: Text(
                  "St",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("中山技师学生"),
              ),
              Divider(),
              ListTile(
                title: Text("电话:1028375628"),
              ),
              ListTile(
                title: Text("地址：广东中山"),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          shape: RoundedRectangleBorder(
              //阴影效果
              borderRadius: BorderRadius.circular(20)),
          elevation: 20, //阴影深度
          child: const Column(
            children: [
              ListTile(
                title: Text(
                  "Hai",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("中山技师学生"),
              ),
              Divider(),
              ListTile(
                title: Text("电话:1028375628"),
              ),
              ListTile(
                title: Text("地址：广东中山"),
              )
            ],
          ),
        )
      ],
    );
  }
}

class mCardView extends StatelessWidget {
  const mCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://www.itying.com/images/flutter/4.png"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class mCardListDataView extends StatelessWidget {
  const mCardListDataView({super.key});

  List<Widget> _initCardData() {
    var tempList = listData.map((value) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                value["imageUrl"],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: Text(value["author"]),
              subtitle: Text(value["title"]),
            )
          ],
        ),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initCardData());
  }
}
