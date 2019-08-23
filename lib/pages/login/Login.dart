import 'package:flutter/material.dart';

class Portable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
            children:<Widget>[
                Text("数据最后更新时间：2019-08-18"),
                Text("干部信息查询系统"),
                Row(
                  children: <Widget>[
                    Text("账号"),
                    EditableText(
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("密码"),
                    EditableText(
                    ),
                  ],
                ),
                Text("登录")
            ]
        ),
    );
  }
}