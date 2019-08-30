import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';

class RollList extends StatefulWidget {
  RollList({Key key}) : super(key: key);

  _RollListState createState() => _RollListState();
}

class _RollListState extends State<RollList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("便携名册"),centerTitle: true,),
       body: Container(
         child: ListView(
           children: _getListData(),
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