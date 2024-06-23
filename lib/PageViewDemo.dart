import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const PageViewPageDemo());
}

class PageViewPageDemo extends StatelessWidget {
  const PageViewPageDemo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug图标
      title: 'PageView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const PageViewPage(),
      // home: const PageViewBuilder(),
      // home: const PageViewPage2(),
      // home: const PageViewPage3(),
      // home: const PageViewPage4(),
      home: const PageViewPage5(),
    );
  }
}

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: PageView(
// scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          children: [
            Center(
              child: Text(
                "1",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
            Center(
              child: Text(
                "2",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
            Center(
              child: Text(
                "3",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
            Center(
              child: Text(
                "4",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
            Center(
              child: Text(
                "5",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            ),
            Center(
              child: Text(
                "6",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline1,
              ),
            )
          ],
        ));
  }
}

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({super.key});

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  int itemCount = 10;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: PageView.builder(
          scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          itemBuilder: (BuildContext context, int index) {
            // return MyPage(text: "$index");
            // 使用自定义缓存
            return KeepAliveWrapper(
                child: MyPage(text: "$index")
            );
          },
          itemCount: 10,
        ));
  }
}

class MyPage extends StatefulWidget {
  final String text;

  const MyPage({super.key, required this.text});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.text, style: Theme
          .of(context)
          .textTheme
          .headline1),
    );
  }
}

class PageViewPage2 extends StatefulWidget {
  const PageViewPage2({super.key});

  @override
  State<PageViewPage2> createState() => _PageViewPageState2();
}

class _PageViewPageState2 extends State<PageViewPage2> {
  final List<Widget> _list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 10; i++) {
      _list.add(MyPage(text: "$i"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          onPageChanged: (index) {
            print(index);
            print(_list.length);
            if (index + 2 == _list.length) {
              setState(() {
                for (var i = 0; i < 10; i++) {
                  _list.add(MyPage(text: "$i"));
                }
              });
            }
          },
          children: _list,
        ));
  }
}

class PageViewPage3 extends StatefulWidget {
  const PageViewPage3({super.key});

  @override
  State<PageViewPage3> createState() => _PageViewPageState3();
}

class _PageViewPageState3 extends State<PageViewPage3> {
  List<Widget> pageList = [];

  @override
  void initState() {
    List listData = [
      {
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      }
    ];
    for (int i = 0; i < listData.length; ++i) {
      pageList.add(PicturePage(
        url: listData[i]["imageUrl"],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: ListView(
          children: [Swiper(pageList: pageList)],
        ));
  }
}

//Swiper组件
class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<Widget> pageList;

  const Swiper({super.key,
    this.width = double.infinity,
    this.height = 200,
    required this.pageList});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index % (widget.pageList.length);
                });
              },
              itemCount: 10000,
              itemBuilder: (context, index) {
                return widget.pageList[index % (widget.pageList.length)];
              }),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.pageList.length, (i) {
              return Container(
                margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == i ? Colors.blue : Colors.grey),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//PicturePage 图片页面
class PicturePage extends StatefulWidget {
  final String url;
  final double width;
  final double height;

  const PicturePage({super.key,
    required this.url,
    this.width = double.infinity,
    this.height = 200});

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Image.network(widget.url, fit: BoxFit.cover),
    );
  }
}

class PageViewPage4 extends StatefulWidget {
  const PageViewPage4({super.key});

  @override
  State<PageViewPage4> createState() => _PageViewPageState4();
}

class _PageViewPageState4 extends State<PageViewPage4> {
  List<Widget> pageList = [];

  @override
  void initState() {
    List listData = [
      {
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      }
    ];
    for (int i = 0; i < listData.length; ++i) {
      pageList.add(PicturePage(
        url: listData[i]["imageUrl"],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: ListView(
          children: [Swiper2(pageList: pageList)],
        ));
  }
}

//Swiper组件
class Swiper2 extends StatefulWidget {
  final double width;
  final double height;
  final List<Widget> pageList;

  const Swiper2({super.key,
    this.width = double.infinity,
    this.height = 200,
    required this.pageList});

  @override
  State<Swiper2> createState() => _SwiperState2();
}

class _SwiperState2 extends State<Swiper2> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    const timeout = Duration(seconds: 3);
    timer = Timer.periodic(timeout, (timer) {
//跳转
      _pageController.animateToPage(
          (_currentPageIndex + 1) % (widget.pageList.length),
          curve: Curves.linear,
          duration: const Duration(milliseconds: 200));
// timer.cancel(); // 取消定时器
    });
  }

  void dispose() {
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index % (widget.pageList.length);
                });
              },
              itemCount: 10000,
              itemBuilder: (context, index) {
                return widget.pageList[index % (widget.pageList.length)];
              }),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.pageList.length, (i) {
              return Container(
                margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == i ? Colors.blue : Colors.grey),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class PageViewPage5 extends StatefulWidget {
  const PageViewPage5({super.key});

  @override
  State<PageViewPage5> createState() => _PageViewPageState5();
}

class _PageViewPageState5 extends State<PageViewPage5> {
  List<Widget> pageList = [];

  @override
  void initState() {
    List listData = [
      {
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      }
    ];
    for (int i = 0; i < listData.length; ++i) {
      pageList.add(PicturePage2(
        url: listData[i]["imageUrl"],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("pageview演示"),
        ),
        body: ListView(
          children: [Swiper2(pageList: pageList)],
        ));
  }
}

class PicturePage2 extends StatefulWidget {
  final String url;
  final double width;
  final double height;

  const PicturePage2({super.key,
    required this.url,
    this.width = double.infinity,
    this.height = 200});

  @override
  State<PicturePage2> createState() => _PicturePageState2();
}

class _PicturePageState2 extends State<PicturePage2>
    with
        AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return Center(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.network(widget.url, fit: BoxFit.cover),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper(
      {Key? key, @required this.child, this.keepAlive = true})
      : super(key: key);
  final Widget? child;
  final bool keepAlive;

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;

  /// 固定写法，可以去掉
  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
// keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }
}
//这里使用covariant协变关键字,感兴趣可以研究一下dart covariant