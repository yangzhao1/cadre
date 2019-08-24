import 'package:flutter/material.dart';

class HomeDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeDetailPageState();
  }
}

class HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.white),
              hintText: "请输入关键字",
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.white30,
              ),
              contentPadding: EdgeInsets.only(top: 10, bottom: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(22),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(22),
                gapPadding: 10,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return _initListCell();
        },
      ),
    );
  }

  Card _initListCell() {
    return Card(
      margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
            child: Text('干部姓名：李洪涛',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          _initSubCell('专业：法律', '单位：西安中级人民法院'),
          _initSubCell('性别：男', '职级：审判长'),
          _initSubCell('家庭成员：妻子', '籍贯：陕西省'),
          _initSubCell('奖惩情况：无', ''),
        ],
      ),
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
