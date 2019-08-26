import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/dataBank/DataBankInfo.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';

class Portable extends StatefulWidget {
  _PortableState createState() => _PortableState();
}

class _PortableState extends State<Portable> {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initCell());
    }
    return list;
  }

  List<Widget> _getListData2() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initCell2());
    }
    return list;
  }

  List<Widget> _getListData3() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initCell3());
    }
    return list;
  }

  List<Widget> _getListData4() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initCell4());
    }
    return list;
  }

  Widget _initCell() {
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

  Widget _initCell2() {
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

  Widget _initCell3() {
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
              _initSubCell('奖惩情况：无', '任命: 西安中级人民法院院长'),
              _initSubCell('时间：2019-06-16', ''),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PeopleInfo()));
        });
  }

  Widget _initCell4() {
    return GestureDetector(
        child: Card(
          margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: Text('单位：西安中级人民法院',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
              _initSubCell('单位即将超龄人员：40人', '单位编制：编制人员152人'),
              _initSubCell('职数: 32个职位', '本年度即将退休人员：3人'),
              _initSubCell('单位内设机构：院领导,民一庭,民二庭,刑庭,行政庭,告申庭,研究室,执行局', '奖惩情况：无'),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DataBankInfo()));
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.red,
                title: Text("分类名册"),
                centerTitle: true,
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(child: Text('便携干部名册',style: TextStyle(backgroundColor: Colors.red)),),
                    Tab(child: Text('智能分类名册',style: TextStyle(backgroundColor: Colors.red)),),
                    Tab(child: Text('任免表',style: TextStyle(backgroundColor: Colors.red)),),
                    Tab(child: Text('信息浏览',style: TextStyle(backgroundColor: Colors.red)),)

                    // Tab(text: "便携干部名册"),
                    // Tab(text: "智能分类名册"),
                    // Tab(text: "任免表"),
                    // Tab(text: "信息浏览",)
                  ],
                  indicatorColor: Colors.white,
                )),
            body: TabBarView(
              children: <Widget>[
                ListView(children: _getListData()),
                ListView(
                  children: _getListData2(),
                ),
                ListView(
                  children: _getListData3(),
                ),
                ListView(
                  children: _getListData4(),
                )
              ],
            )));
  }
}
