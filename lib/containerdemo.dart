// 代码块 statelessW
import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {

  const ContainerTest({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: const Text(
          "你好Flutter",
          style:TextStyle(
              fontSize: 20
          ),
        ),
      ),
    );
  }
}

class ContainerTest2 extends StatelessWidget {

  const ContainerTest2({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            //LinearGradient 背景线性渐变 RadialGradient径向渐变
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.orange],
            ),
            boxShadow:const [
              //卡片阴影
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2.0, 2.0),
                blurRadius: 10.0,
              )
            ],
            border: Border.all(
              color: Colors.black,
              width: 1
            )
          ),
          transform:Matrix4.rotationZ(.2),
          child: const Text(
            "你好Flutter",
            style: TextStyle(fontSize: 20),
          ),
        ),
    );
  }
}

// 代码块 statelessW
class ContainerButton extends StatelessWidget {
  const ContainerButton({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Text(
          "按钮",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}