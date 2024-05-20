import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  const TextDemo({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
        child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          gradient: const LinearGradient(
            //LinearGradient 背景线性渐变 RadialGradient径向渐变
            colors: [Colors.red, Colors.orange],
          ),
          boxShadow: const [
            //卡片阴影
            BoxShadow(
              color: Colors.blue,
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
            )
          ],
          border: Border.all(color: Colors.black, width: 1)
        ),
        transform: Matrix4.rotationZ(.2),
        child: const Text(
          '各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大 地',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis, // overflow:TextOverflow.fade ,
          maxLines: 2,
          textScaleFactor: 1.8,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black, // color:Color.fromARGB(a, r, g, b)
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0
          )
        ),),
    );
  }
}