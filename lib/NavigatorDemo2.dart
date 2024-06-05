import 'package:flutter/material.dart';

void main() {
  runApp(const NavigatorDemo2());
}

class NavigatorDemo2 extends StatelessWidget {
  const NavigatorDemo2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TabsState();
}

class _TabsState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //跳转路由
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const NewPage(title: "测试路由传值");
                    }));
                  },
                  child: const Text("跳转新页面")),
            ],
          ),
        ));
  }
}

class NewPage extends StatefulWidget {
  final String title;
  const NewPage({super.key, this.title = "新页面"});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("这是一个新页面"),
      ),
    );
  }
}
