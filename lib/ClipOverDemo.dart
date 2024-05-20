import 'package:flutter/material.dart';

class ClipOverDemo extends StatelessWidget {

  const ClipOverDemo({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
            "https://www.itying.com/themes/itying/images/ionic4.png",
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover),
      ),
    );
  }
}

class LocalImageDemo extends StatelessWidget {

  const LocalImageDemo({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset(
            "images/WechatIMG56.jpg",
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover),
      ),
    );
  }
}