import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(flex: 2, child: IconContainer(Icons.home, color: Colors.red)),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.orange),
        )
      ],
    );
  }
}

class FlexDemo2 extends StatelessWidget {
  const FlexDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: IconContainer(Icons.home, color: Colors.red)),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.orange),
        )
      ],
    );
  }
}

class FlexDemo3 extends StatelessWidget {
  const FlexDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2, child: IconContainer(Icons.home, color: Colors.red)),
        Expanded(
            flex: 1, child: IconContainer(Icons.search, color: Colors.orange)),
      ],
    );
  }
}

class FlexDemo4 extends StatelessWidget {
  const FlexDemo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.network(
                              "https://www.itying.com/images/flutter/3.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.network(
                              "https://www.itying.com/images/flutter/4.png",
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  double size;
  IconData icon;

  IconContainer(this.icon,
      {Key? key, this.color = Colors.red, this.size = 32.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
      child: Center(child: Icon(icon, size: size, color: Colors.white)),
    );
  }
}
