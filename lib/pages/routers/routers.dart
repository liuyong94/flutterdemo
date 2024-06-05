import 'package:flutter/material.dart';
import '../../NavigatorDemo4.dart';

//1、配置路由
Map routes = {
  '/': (context) => const HomePage(),
  '/search': (context) => const SearchPage(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
};

//2、配置onGenerateRoute  固定写法  这个方法也相当于一个中间件，这里可以做权限判断
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name; //  /search 或者 /form
  final Function? pageContentBuilder =
      routes[name]; //  Function = (contxt) { return const SearchPage()}

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));

      return route;
    }
  }
  return null;
};
