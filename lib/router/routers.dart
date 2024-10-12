// import 'package:flutter/material.dart';
// ios风格的路由 cupertino.dart 再改成 CupertinoPageRoute
import 'package:flutter/cupertino.dart';
import 'package:flutter_01/pages/dialog.dart';
import 'package:flutter_01/pages/user/register1.dart';
import 'package:flutter_01/pages/user/register2.dart';
import 'package:flutter_01/pages/user/register3.dart';
import '../pages/form_2.dart';
import '../pages/news_2.dart';
import '../pages/search.dart';
import '../pages/shop.dart';
import '../pages/tabs.dart';

Map routes = {
  "/": (context) => const Tabs(),
  "/news2": (context) => const News2Page(),
  "/search": (context) => const SearchPage(),
  "/form2": (context, {arguments}) => Form2Page(arguments: arguments),
  "/shop": (context, {arguments}) => ShopPage(arguments: arguments),
  "/register1": (context) => const Register1Page(),
  "/register2": (context) => const Register2Page(),
  "/register3": (context) => const Register3page(),
  "/dialog": (context) => const DialogPage()
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name; // /news 或者 /search
  final Function? pageContentBuilder =
      routes[name]; // Function (context) => const News2Page()
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {

      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
