import 'package:flutter/material.dart';
import 'package:flutter_01/router/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const Tabs(),
      initialRoute: "/",//初始化路由
      //配置onGenerateRoute固定写法
      // onGenerateRoute: (RouteSettings settings) {
      //   // print(settings);
      //   // print(settings.name);
      //   // print(settings.arguments);
      //   final String? name = settings.name; // /news 或者 /search
      //   final Function? pageContentBuilder =
      //       routes[name]; // Function (context) => const News2Page()
      //   if (pageContentBuilder != null) {
      //     if (settings.arguments != null) {
      //       final Route route = MaterialPageRoute(
      //           builder: (context) =>
      //               pageContentBuilder(context, arguments: settings.arguments));
      //       return route;
      //     } else {
      //       final Route route = MaterialPageRoute(
      //           builder: (context) => pageContentBuilder(context));
      //       return route;
      //     }
      //   }
      //   return null;
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
