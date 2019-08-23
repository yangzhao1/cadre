import 'package:flutter/material.dart';

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
              tabs: <Widget>[
                Tab(text: "人员"),
                Tab(text: "单位")
            ],
          )
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: _getListData(),
              ),
              ListView(
                children: _getListData(),
              )
            ],          
          ),
        ),
      );
  }

  List<Widget> _getListData(){
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
        list.add(_initCell());
    }
    return list;
  }

  Card _initCell() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),child: Text('干部姓名：张三'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),child: Text('单位：西安中级人民法院'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('性别：男          职级：书记'),),
        ],
      ),
    );
  }
}