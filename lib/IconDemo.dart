import 'package:flutter/material.dart';
import 'ItyingIcon.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: const [
        Icon(Icons.search, color: Colors.red, size: 40),
        SizedBox(height: 10),
        Icon(Icons.home),
        SizedBox(height: 10),
        Icon(Icons.category),
        SizedBox(height: 10),
        Icon(Icons.shop),
        SizedBox(height: 10),
        Icon(ItyingIcon.book, color: Colors.orange, size: 40),
        SizedBox(height: 10),
        Icon(ItyingIcon.wechat, color: Colors.green, size: 40),
        SizedBox(height: 10),
        Icon(ItyingIcon.cart, color: Colors.black, size: 40),
      ],
    ));
  }
}
