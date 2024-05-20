import 'package:flutter/material.dart';

class CircleAvatarDemo extends StatelessWidget {

  const CircleAvatarDemo({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return const CircleAvatar(
        radius: 110,
        backgroundColor: Color(0xffFDCF09),
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),
        )
    );
  }
}