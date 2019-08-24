import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';

class Collect extends StatefulWidget {
  _CollectState createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("收藏夹"),
            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>[Tab(text: "人员"), Tab(text: "单位")],
            )),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: _getListData(),
            ),
            ListView(
              children: _getUnitListData(),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initCell());
    }
    return list;
  }

  List<Widget> _getUnitListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 9; i++) {
      list.add(_initUnitCell());
    }
    return list;
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

  Card _initUnitCell() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: Text('名称：西安中级人民法院'),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                child: Text('  联系方式：029-56445125'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: Text('信访接待电话: 872546554'),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                child: Text('地址: 西安市北二环东段139号'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
            child: Text('简介: 西安市中级人民法院位于西安市北二环东段139号，是依法设立的国家审判机关，辖9区4县共13'
                '个基层人民法院，27个人民法庭，共有干警1924名。全市法院年受理案件约70000件，约占全省法院受理案件总数的三分之一...'),
          )
        ],
      ),
    );
  }
}
