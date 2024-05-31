import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class Tabs3 extends StatefulWidget {
  const Tabs3({super.key});

  @override
  State<Tabs3> createState() => _TabsState();
}

class _TabsState extends State<Tabs3> {
  int _currentIndex=0;
  final List<Widget> _pages=const [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor:Colors.red,  //选中的颜色
          iconSize:35,           //底部菜单大小
          currentIndex:_currentIndex,  //第几个菜单选中
          type:BottomNavigationBarType.fixed,  //如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
          onTap:(index){     //点击菜单触发的方法
            //注意
           setState(() {
             _currentIndex=index;
           });
          },
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "首页"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.category),
              label: "分类"
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              label: "设置"
            ),
             BottomNavigationBarItem(
              icon:Icon(Icons.people),
              label: "用户"
            )
        ]),
      );
  }
}