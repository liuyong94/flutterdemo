import 'package:flutter/material.dart';

class StatefulWidgetDemo extends StatefulWidget {
  const StatefulWidgetDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetDemo> createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidgetDemo> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text("$countNum", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  countNum++;
                });
              },
              child: const Text("增加"))
        ],
      ),
    );
  }
}

class StatefulWidgetDemo2 extends StatefulWidget {
  const StatefulWidgetDemo2({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetDemo2> createState() => _HomePageState2();
}

class _HomePageState2 extends State<StatefulWidgetDemo2> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  list.add("新增一条数据");
                });
              },
              child: const Text("增加")),
        )
      ],
    );
  }
}
