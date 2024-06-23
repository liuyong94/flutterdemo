// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDialog extends Dialog {
  String title;
  String content;
  Function()? onClosed;

  MyDialog(
      {Key? key,
      required this.title,
      required this.onClosed,
      this.content = ""})
      : super(key: key);

  _showTimer(context) {
    Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('关闭');
      Navigator.of(context).pop();
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,  // 设置背景透明
      child: Center(  // 主要要包裹一个组件，不然会全屏
          child: Container(
        height: 300,
        width: 300,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(title),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(   // 可以让里面的元素响应点击事件
                      onTap: onClosed,
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(content, textAlign: TextAlign.left),
            )
          ],
        ),
      )),
    );
  }

}
