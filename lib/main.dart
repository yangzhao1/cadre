import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/analyse/analyse_page.dart';
import 'package:flutter_cadre/pages/me/Me.dart';
import 'pages/portable/Portable.dart';
import 'pages/home/index.dart';
import 'pages/analyse/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MainTabPage(),
    );
  }
}

class _MainTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<_MainTabPage> {
  final _itemsData = [
    TabbarItem('首页','images/home_nor.png','images/home_sel.png', HomePage()),
    TabbarItem('数据分析','images/analyse_nor.png','images/analyse_sel.png', AnalysePage()),
    TabbarItem('便携名册','images/address_nor.png','images/address_sel.png', Portable()),
    TabbarItem('我的', 'images/mine_nor.png','images/mine_sel.png', Me()),
  ];
  
  int _selectIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _itemsData[_selectIndex].pageRout,
      bottomNavigationBar: BottomNavigationBar(
        items: _itemsData.map((item)=>this._initItem(item)).toList(),
        currentIndex: _selectIndex,
        selectedItemColor: Colors.blue,
        onTap: (index){
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem _initItem(TabbarItem item) {
    return BottomNavigationBarItem(
      icon: Image(
        image: AssetImage(item.norImage),
        width: 25,
        height: 25,
      ),
      activeIcon: Image(
        image: AssetImage(item.selImage),
        width: 25,
        height: 25,
      ),
      title: Text(item.title),
    );
  }
}

/// tabbar item
class TabbarItem {
  TabbarItem(this.title, this.norImage,this.selImage, this.pageRout);
  String title;
  String norImage;
  String selImage;
  Widget pageRout;
}