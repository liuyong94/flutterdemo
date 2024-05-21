import 'package:flutter/material.dart';
import 'package:flutterdemo/res/listData.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 80.0,
      childAspectRatio: 1.0,
      children: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }
}

class GridViewDemo3 extends StatelessWidget {
  const GridViewDemo3({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第$i条数据',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        // height: 400, //设置高度没有反应
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20.0,
      //水平子 Widget 之间间距
      mainAxisSpacing: 20.0,
      //垂直子 Widget 之间间距
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      //一行的 Widget 数量
      childAspectRatio: 0.8,
      //宽度和高度的比例
      children: _getListData(),
    );
  }
}

class GridViewDemo4 extends StatelessWidget {
  const GridViewDemo4({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            const SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    });
    // ('xxx','xxx')
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0,
      //水平子 Widget 之间间距
      mainAxisSpacing: 10.0,
      //垂直子 Widget 之间间距
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      //一行的 Widget 数量
      // childAspectRatio:0.7, //宽度和高度的比例
      children: _getListData(),
    );
  }
}

class GridViewDemo5 extends StatelessWidget {
  const GridViewDemo5({Key? key}) : super(key: key);

  Widget _getListData(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          const SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
      // height: 400, //设置高度没有反应
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //注意
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0, //水平子 Widget 之间间距
        mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
        crossAxisCount: 2, //一行的 Widget 数量
      ),
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }
}

class GridViewDemo6 extends StatelessWidget {
  const GridViewDemo6({Key? key}) : super(key: key);

  Widget _getListData(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          const SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
      // height: 400, //设置高度没有反应
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //注意
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 300,
      ),
      itemCount: listData.length,
      itemBuilder: _getListData,
    );
  }
}
