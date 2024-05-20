import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {

  const ImageDemo({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child:Container(
        width: 150,
        height: 150,
        decoration: const BoxDecoration( color: Colors.yellow ),
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {

  const CircleImage({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(75),
            image: const DecorationImage(
                image: NetworkImage(
                  "https://www.itying.com/themes/itying/images/ionic4.png",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}