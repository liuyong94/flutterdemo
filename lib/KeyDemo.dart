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
      // home: const MyHomePage(),
      home: const GlobalKeyDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<Widget> list = [
  //   Box(
  //     color: Colors.blue,
  //   ),
  //   Box(
  //     color: Colors.red,
  //   ),
  //   Box(
  //     color: Colors.orange,
  //   )
  // ];

  // List<Widget> list = [
  //   Box(
  //     color: Colors.blue,
  //   ),
  //   Box(
  //     color: Colors.blue,
  //   ),
  //   Box(
  //     color: Colors.blue,
  //   )
  // ];

  // LocalKey改造上面的例子
  // List<Widget> list = [
  //   Box(
  //     key: const ValueKey(1),
  //     color: Colors.blue,
  //   ),
  //   Box(
  //     key: ObjectKey(Box(color: Colors.red)),
  //     color: Colors.red,
  //   ),
  //   Box(
  //     key:UniqueKey(), //程序自动生成一个key
  //     color: Colors.orange,
  //   )
  // ];

  List<Widget> list = [];
  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  final GlobalKey _key3 = GlobalKey();

  @override
  void initState() {
    super.initState();
    list = [
      Box(
        key: _key1,
        color: Colors.blue,
      ),
      Box(
        key: _key2,
        color: Colors.red,
      ),
      Box(
        key: _key3, //程序自动生成一个key
        color: Colors.orange,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.shuffle(); //打乱list的顺序
          });
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: list,
        // ),
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  Color color;

  Box({super.key, required this.color});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color)),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Center(
          child: Text("$_count"),
        ),
      ),
    );
  }
}

class GlobalKeyDemo extends StatefulWidget {
  const GlobalKeyDemo({super.key});

  @override
  State<GlobalKeyDemo> createState() => _HomePageState();
}

class _HomePageState extends State<GlobalKeyDemo> {
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          //1、获取子组件的状态 调用子组件的属性
          var state = (_globalKey.currentState as _BoxState);
          setState(() {
            state._count++;
          });
          //2、获取子组件的属性
          var box = (_globalKey.currentWidget as Box);
          print(box.color);
          //3、获取子组件渲染的属性
          var renderBox =
              (_globalKey.currentContext!.findRenderObject() as RenderBox);
          print(renderBox.size);
        },
      ),
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Box(
          key: _globalKey,
          color: Colors.red,
        ),
      ),
    );
  }
}

