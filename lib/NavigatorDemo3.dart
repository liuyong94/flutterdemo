import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/tabs/message.dart';
import 'package:flutterdemo/pages/tabs/user.dart';

void main() {
  runApp(const NavigatorDemo3());
}

class NavigatorDemo3 extends StatelessWidget {
  const NavigatorDemo3({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      initialRoute: "/",
      routes: {
        "/user": (contxt) => const UserPage(),
        "/message": (contxt) {
          return const MessagePage();
        },
      },
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
                //跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const UserPage();
                }));
              },
              child: const Text("基本路由跳转user")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/user");
              },
              child: const Text("命名路由跳转user")),
          ElevatedButton(
              onPressed: () {
                //跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const MessagePage();
                }));
              },
              child: const Text("基本路由跳转message")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/message");
              },
              child: const Text("命名路由跳转message")),
        ],
      ),
    );
  }
}
