import 'package:easy_listview/easy_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/home/home_detail_page.dart';
import 'package:flutter_cadre/pages/home/home_search_page.dart';
import 'package:flutter_cadre/pages/outline/PeopleOutline.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';
import 'package:flutter_cadre/pages/tools/tool_notification.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<String> _bannerUrls = [
    'http://imgs.ali213.net/IndexTJ/2019/03/21/20190321112445483.jpg',
    'http://via.placeholder.com/350x150'
  ];

  List _hotMessages = ['测试1', '测试2'];

  List _tableItems = ['1', '2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyListView(
        headerBuilder: (BuildContext context) {
          return Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 3,
                child: _initTopSwiper(),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: _initNoticeSwiper(),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: _initQuickFind(),
              ),
              Container(
                height: 30,
                child: _initSectionHeader(),
              )
            ],
          );
        },
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return _initCell();
        },
      ),
    );
  }

  //顶部
  Swiper _initTopSwiper() {
    return Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          _bannerUrls[index],
          fit: BoxFit.fill,
        );
      },
      itemCount: _bannerUrls.length,
      pagination: new SwiperPagination(),
      control: null,
    );
  }

  //热点信息
  Swiper _initNoticeSwiper() {
    return Swiper(
      scrollDirection: Axis.vertical,
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Text(_hotMessages[index]);
      },
      itemCount: _hotMessages.length,
      pagination: null,
      control: null,
    );
  }

  //快捷查询
  Row _initQuickFind() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: _initQuickButton('综合查询'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDetailPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('高级查询'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('智能查询'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDetailPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('名册概要'),
          onTap: () {
            // ToolNotification(value: 2).dispatch(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PeopleOutline()));
          },
        ),
      ],
    );
  }

  Center _initQuickButton(String title) {
    return Center(
      child: ClipOval(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.blue,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Row _initSectionHeader() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
          width: 4,
          color: Colors.blue,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '名册一览',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Card _initCell() {
    return Card(
        child: GestureDetector(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                  child: Text('干部姓名：李洪涛'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('单位：西安中级人民法院'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                  child: Text('性别：男          职级：书记'),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PeopleInfo()));
            }));
  }
}
