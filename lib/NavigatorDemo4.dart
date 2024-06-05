import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/routers/routers.dart';

void main() {
  runApp(NavigatorDemo4());
}

class NavigatorDemo4 extends StatelessWidget {
  NavigatorDemo4({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      //2、配置onGenerateRoute  固定写法
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              },
              child: const Text("search跳转")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/form",
                    arguments: {"title": "我是命名路由传值", "aid": 20});
              },
              child: const Text("表单跳转")),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("搜索页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("搜索页面"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("返回上一级页面")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

//其他页面跳转到Form页面进行命名路由传值
class FormPage extends StatefulWidget {
  final Map arguments;

  const FormPage({super.key, required this.arguments});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("表单页面"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("返回上一级页面")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
