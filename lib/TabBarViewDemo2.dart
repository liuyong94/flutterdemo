import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo2());
}

class TabBarDemo2 extends StatelessWidget {
  const TabBarDemo2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug图标
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //生命周期函数:当组件初始化的时候就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index); //获取点击或滑动页面的索引值
      }
    });
  }

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(child: Text("热门")),
              Tab(child: Text("推荐")),
              Tab(child: Text("视频"))
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: const [Text("热门"), Text("推荐"), Text("视频")]));
  }
}
