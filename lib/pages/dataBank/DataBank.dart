import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/dataBank/ArtInfo.dart';

import 'AddData.dart';

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
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddData()));
            },
          )
        ],
      ),
      body: ListView(children: _getListData()),
    );
  }

  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
      list.add(_initListCell());
    }
    return list;
  }

  Widget _initListCell() {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
              child: Text('名称: 西安中级人民法院介绍手册',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            _initSubCell('编号：YHDHJSSK-142012J', '语言：中文'),
            _initSubCell('更新日期：2019-05-13', '大小: 15kb'),
            _initSubCell('格式: pdf', ''),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context)=>ArtInfo()
          )
        );
      },
    );
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
