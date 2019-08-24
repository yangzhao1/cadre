import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/home/home_detail_page.dart';

class DataBank extends StatefulWidget {

  _DataBankState createState() => _DataBankState();
}

class _DataBankState extends State<DataBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("资料库"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>HomeDetailPage()
                )
              );
            },
          )
        ],
      ),
      body: ListView(children: _getListData()),
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
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),child: Text('名称: 西安中级人民法院介绍手册'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),child: Text('编号：YHDHJSSK-142012J'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('语言：中文          更新日期：2019-05-13'),),
        ],
      ),
    );
  }
}