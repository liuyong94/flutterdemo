import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarDemo());
}

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

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
        appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  print('menu Pressed');
                }),
            title: const Text('FlutterDemo'),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    print('Search Pressed');
                  }),
              IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                    print('more_horiz Pressed');
                  })
            ]),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text("大地老师"),
              accountEmail: const Text("dadi@itying.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://www.itying.com/images/flutter/3.png"),
              ),
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/2.png"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                Image.network("https://www.itying.com/images/flutter/4.png"),
                Image.network("https://www.itying.com/images/flutter/5.png"),
                Image.network("https://www.itying.com/images/flutter/6.png")
              ],
            ),
            const ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(child: Icon(Icons.people)),
            ),
            const Divider(),
            const ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(child: Icon(Icons.settings)),
            )
          ],
        )),
        body: Center(
          child: Text("首页"),
        ));
  }
}
