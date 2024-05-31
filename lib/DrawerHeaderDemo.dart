import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerHeaderDemo());
}

class DrawerHeaderDemo extends StatelessWidget {
  const DrawerHeaderDemo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        drawer: const Drawer(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: DrawerHeader(
                        decoration: const BoxDecoration(
                            // color: Colors.yellow,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.itying.com/images/flutter/2.png"),
                                fit: BoxFit.cover)),
                        child: Column(
                          children: const [
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://www.itying.com/images/flutter/3.png")),
                              title: Text("张三",
                                  style: TextStyle(color: Colors.red)),
                            ),
                            ListTile(
                              title: Text("邮箱：xxxx@qq.com"),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("个人中心"),
              ),
              const Divider(),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("系统设置"),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: const Drawer(
          child: Text("右侧侧边栏"),
        ),
        body: Center(
          child: Text("首页"),
        ));
  }
}
