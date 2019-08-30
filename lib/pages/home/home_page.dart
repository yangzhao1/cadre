import 'package:easy_listview/easy_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/collect/Collect.dart';
import 'package:flutter_cadre/pages/home/home_detail_page.dart';
import 'package:flutter_cadre/pages/home/home_search_page.dart';
import 'package:flutter_cadre/pages/home/smart_roster_page.dart';
import 'package:flutter_cadre/pages/outline/PeopleOutline.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<String> _bannerUrls = [
    'images/banner3.png',
    'images/banner4.png'
  ];

  List _hotMessages = ['关于干部信息系统查询PAD的通知', '冯建伟任命西安中级人民法院院长的通知'];

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
                color: Colors.white,
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Image(image: AssetImage("images/gonggao.png"),width: 10,height: 10,),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 300,
                       child:_initNoticeSwiper(),
                    )
                  ],
                )
              ),
              SizedBox(height: 3,),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: _initQuickFind(),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: _initQuickFind2(),
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
          return _initListCell();
        },
      ),
    );
  }

  //顶部
  Swiper _initTopSwiper() {
    return Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Image(
          image: AssetImage(_bannerUrls[index]),
          fit: BoxFit.fill,
        );
        
        // new Image.network(
        //   _bannerUrls[index],
        //   fit: BoxFit.fill,
        // );
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
          child: _initQuickButton('综合查询', "images/icon_1.png"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDetailPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('高级查询', "images/icon_2.png"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('智能查询', "images/icon_3.png"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeDetailPage()));
          },
        ),
        // GestureDetector(
        //   child: _initQuickButton('名册概要', "images/icon_4.png"),
        //   onTap: () {
        //     // ToolNotification(value: 2).dispatch(context);
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => PeopleOutline()));
        //   },
        // ),
      ],
    );
  }

  //快捷查询
  Row _initQuickFind2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: _initQuickButton('收藏夹管理', "images/scj_icon.png"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Collect()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('便携名册', "images/bxmc_icon.png"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SmartRosterPage()));
          },
        ),
        GestureDetector(
          child: _initQuickButton('名册概要', "images/icon_4.png"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PeopleOutline()));
          },
        ),
        // GestureDetector(
        //   child: _initQuickButton('名册概要', "images/icon_4.png"),
        //   onTap: () {
        //     // ToolNotification(value: 2).dispatch(context);
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => PeopleOutline()));
        //   },
        // ),
      ],
    );
  }

  Card _initQuickButton(String title, String imagePath) {
    return Card(
        child: Container(
          width: 150,
          height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.black)),
          SizedBox(
            width: 10,
          ),
          Image(
            width: 30,
            height: 30,
            image: AssetImage(imagePath),
          )
        ],
      ),
    ));
  }

  Row _initSectionHeader() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
          width: 4,
          color: Colors.red,
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

  Widget _initListCell() {
    return GestureDetector(
        child: Card(
          margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: Text('干部姓名：李洪涛',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
              _initSubCell('专业：法律', '单位：西安中级人民法院'),
              _initSubCell('性别：男', '职级：审判长'),
              _initSubCell('家庭成员：妻子', '籍贯：陕西省'),
              _initSubCell('奖惩情况：无', ''),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PeopleInfo()));
        });
  }

  Container _initSubCell(String beforeString, String afterString) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              beforeString,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(afterString, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
