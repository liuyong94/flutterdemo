import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：1213214142"),
              ),
              ListTile(title: Text("地址：北京市海淀区"))
            ],
          ),
        ),
        Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
// color: Colors.red,
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：1213214142"),
              ),
              ListTile(title: Text("地址：北京市海淀区"))
            ],
          ),
        )
      ],
    );
  }
}

class CardDemo2 extends StatelessWidget {
  const CardDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60),
                ),
                title: const Text("xxxx"),
                subtitle: const Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png')),
                title: Text("xxxxxxxx"),
                subtitle: Text("xxxxxxxxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
