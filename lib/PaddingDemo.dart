import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 1,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/2.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/3.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/4.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/5.png',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.network('https://www.itying.com/images/flutter/6.png',
              fit: BoxFit.cover),
        ),
      ],
    );
  }
}
