import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // 在这里添加你的代码，这段代码会在按钮被点击时执行
          print('按钮被点击了');
        },
        child: const Text("普通按钮"));
  }
}

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // 在这里添加你的代码，这段代码会在按钮被点击时执行
          print('TextButton按钮被点击了');
        },
        child: const Text("文本按钮"));
  }
}

class OutlinedButtonDemo extends StatelessWidget {
  const OutlinedButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          // 在这里添加你的代码，这段代码会在按钮被点击时执行
          print('OutlinedButton按钮被点击了');
        },
        child: const Text("边框按钮"));
  }
}

class OutlinedButtonDemo2 extends StatelessWidget {
  const OutlinedButtonDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Colors.red))),
                onPressed: () {},
                child: const Text("注册 配置边框")),
          ),
        )
      ],
    );
  }
}

class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          // 在这里添加你的代码，这段代码会在按钮被点击时执行
          print('IconButton按钮被点击了');
        },
        icon: const Icon(Icons.thumb_up));
  }
}

class ButtonListDemo extends StatelessWidget {
  const ButtonListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ElevatedButton.icon(
          icon: Icon(Icons.send),
          label: Text("发送"),
          onPressed: () {
            print("发送");
          },
        ),
        Divider(),
        OutlinedButton.icon(
          icon: Icon(Icons.add),
          label: Text("添加"),
          onPressed: () {
            print("添加");
          },
        ),
        Divider(),
        TextButton.icon(
          icon: Icon(Icons.info),
          label: Text("详情"),
          onPressed: () {
            print("详情");
          },
        ),
        Divider(),
      ],
    );
  }
}

class ElevatedButtonDemo2 extends StatelessWidget {
  const ElevatedButtonDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {},
        child: const Text('宽度高度'),
      ),
    );
  }
}

class ElevatedButtonDemo3 extends StatelessWidget {
  const ElevatedButtonDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 60,
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('自适应按钮'),
              onPressed: () {
                print("自适应按钮");
              },
            ),
          ),
        )
      ],
    );
  }
}

class ElevatedButtonDemo4 extends StatelessWidget {
  const ElevatedButtonDemo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(20),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        onPressed: () {
          print("圆角按钮");
        },
        child: const Text('圆角'));
  }
}

class ElevatedButtonDemo5 extends StatelessWidget {
  const ElevatedButtonDemo5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(20),
              shape: MaterialStateProperty.all(
                CircleBorder(side: BorderSide(color: Colors.white)),
              )),
          onPressed: () {
            print("圆形按钮");
          },
          child: const Text('圆形按钮')),
    );
  }
}
