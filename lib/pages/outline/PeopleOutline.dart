import 'package:flutter/material.dart';

class PeopleOutline extends StatefulWidget {
  PeopleOutline({Key key}) : super(key: key);

  _PeopleOutlineState createState() => _PeopleOutlineState();
}

class _PeopleOutlineState extends State<PeopleOutline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("名册概要"), centerTitle: true),
      body: ListView(
        children: _getListData(),
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
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),child: Text('名称: 西安市人民法院'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),child: Text('院领导：李川，王平，钱天彤,刘捷。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),child: Text('民一庭：赵培莲，马起泉，肖宝清，郝鹏，张国栋（小），张国栋（大），蔡荣华，王爽，张宁宁，潘烨，王文通，王承铭。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('民二庭：柏松，曹杨，张羽，王文雅，李冬平，王成鑫，曹玥，蔡常余，张东良，孙英，赵宝利，徐晨，徐玉刚。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('民四庭：徐德利，卢丽新，周奕，孟梁，陈刚，刘红，童文星，孙开军，张辉，张宇明，王小江，杨文华，余涛。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('刑庭：吴金禄，杨庆仁，张忠志，刘毅，王健，闫清，果健。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('行政庭：詹易军，王欣，范懿。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('告申庭：杨旭兵，张莹，杜娟，陈妍红，孙泽民，李岗，姜涛，赵战勇。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('研究室：孙政，郭超，张煦。'),),
          Container(padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 10),child: Text('执行局：翟永波，姚津生，葛建中，郭强，徐秋立，梁仁进，陈述琦，刘腾，崔成元，杨朔，张鹏，曹耀辉，储智君。'),),
        ],
      ),
    );
  }
}