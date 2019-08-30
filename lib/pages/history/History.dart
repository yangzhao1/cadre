import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/dataBank/DataBankInfo.dart';
import 'package:flutter_cadre/pages/tools/Toast.dart';

class BrowsHistory extends StatefulWidget {
  _BrowsHistoryState createState() => _BrowsHistoryState();
}

class _BrowsHistoryState extends State<BrowsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("浏览记录"),
        centerTitle: true,
        actions: <Widget>[
           IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Toast.toast(
                context,
                msg: "清除完成"
              );
            },
          )
        ],
      ),
      body: ListView(
        children: _getListData()
      ),
    );
  }

  List<Widget> _getListData(){
    List<Widget> list = new List();
    for (var i = 0; i < 5; i++) {
        list.add(_initUnitCell());
    }
    return list;
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


  Widget _initUnitCell() {
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


}