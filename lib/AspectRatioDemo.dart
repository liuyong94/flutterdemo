import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.yellow,
      child: AspectRatio(
        aspectRatio: 2.0 / 1.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

class AspectRatioDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0/1.0,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
