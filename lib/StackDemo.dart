import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          const Text('我是一个文本',
              style: TextStyle(fontSize: 40, color: Colors.white))
        ],
      ),
    );
  }
}

class StackDemo2 extends StatelessWidget {
  const StackDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue.shade50,
      child: const Align(
        alignment: Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}

class StackDemo3 extends StatelessWidget {
  const StackDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue.shade50,
        child: const Align(
          alignment: Alignment(2, 0.0),
          child: FlutterLogo(
            size: 60,
          ),
        ));
  }
}

class StackDemo4 extends StatelessWidget {
  const StackDemo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
// alignment: Alignment.center,
          children: const <Widget>[
            Align(
              alignment: Alignment(1, -0.2),
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.settings_applications,
                  size: 30, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class StackDemo5 extends StatelessWidget {
  const StackDemo5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
// alignment: Alignment.center,
          children: const <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications,
                  size: 30, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class StackDemo6 extends StatelessWidget {
  const StackDemo6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 45),
          children: const [
            ListTile(
              title: Text("这是一个标题 "),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
            ListTile(
              title: Text("这是一个标题"),
            ),
          ],
        ),
        Positioned(
            top: 0,
            left: 0,
            height: 40,
            width: size.width,
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: const Text(
                "你好Flutter",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
