import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const AnimatedListPage(),
      // home: const AnimatedListPage2(),
      home: const AnimatedListPage3(),
    );
  }
}

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {
  final globalKey = GlobalKey<AnimatedListState>();
  List<String> list = ["第一条数据", "第二条数据"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          list.add("这是一个数据");
          globalKey.currentState!.insertItem(list.length - 1);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("AppBar组件"),
      ),
      body: AnimatedList(
          key: globalKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: ListTile(
                  title: Text(list[index]), trailing: Icon(Icons.delete)),
            );
          }),
    );
  }
}

class AnimatedListPage2 extends StatefulWidget {
  const AnimatedListPage2({super.key});

  @override
  State<AnimatedListPage2> createState() => _AnimatedListPageState2();
}

class _AnimatedListPageState2 extends State<AnimatedListPage2> {
  final globalKey = GlobalKey<AnimatedListState>();
  List<String> list = ["第一条数据", "第二条数据"];

  @override
  void initState() {
// TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          list.add("这是一个数据");
          globalKey.currentState!.insertItem(list.length - 1);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("AppBar组件"),
      ),
      body: AnimatedList(
          key: globalKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, animation) {
            print(animation);
            return ScaleTransition(
              scale: animation,
              child: ListTile(
                  title: Text(list[index]), trailing: Icon(Icons.delete)),
            );
          }),
    );
  }
}

class AnimatedListPage3 extends StatefulWidget {
  const AnimatedListPage3({super.key});

  @override
  State<AnimatedListPage3> createState() => _AnimatedListPageState3();
}

class _AnimatedListPageState3 extends State<AnimatedListPage3> {
  final globalKey = GlobalKey<AnimatedListState>();
  bool flag = true;
  List<String> list = ["第一条数据", "第二条数据"];

  @override
  void initState() {
// TODO: implement initState
    super.initState();
  }

  Widget _buildItem(context, index) {
    return ListTile(
        key: ValueKey(index),
        title: Text(list[index]),
        trailing: IconButton(
          icon: Icon(Icons.delete),
// 点击时删除
          onPressed: () => _deleteItem(context, index),
        ));
  }

  _deleteItem(context, index) {
    if (flag == true) {
      flag = false;
      print(index);
      //注意：删除后需要重新setState
      setState(() {
        // 删除过程执行的是反向动画，animation.value 会从1变为0
        globalKey.currentState!.removeItem(index, (context, animation) {
          //注意先build然后再去删除
          var item = _buildItem(context, index);
          list.removeAt(index);
          return FadeTransition(
            opacity: animation,
            child: item,
          );
        }, duration: Duration(milliseconds: 500));
      });
      //解决快速删除bug 重置flag
      const timeout = Duration(milliseconds: 600);
      Timer.periodic(timeout, (timer) {
        flag = true;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 增加 animation.value 会从0变为1
          list.add("这是一个数据");
          globalKey.currentState!.insertItem(list.length - 1);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("AppBar组件"),
      ),
      body: AnimatedList(
          key: globalKey,
          initialItemCount: list.length,
          itemBuilder: (context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: _buildItem(context, index),
            );
          }),
    );
  }
}
