import 'package:flutter/material.dart';

class BrowsHistory extends StatefulWidget {
  _BrowsHistoryState createState() => _BrowsHistoryState();
}

class _BrowsHistoryState extends State<BrowsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("浏览记录"),
        centerTitle: true
      ),
      body: ListView(
        children: _getListData()
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