import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  AddData({Key key}) : super(key: key);

  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController _titleController = new TextEditingController();
  TextEditingController _contentController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("添加数据"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
                autofocus: false,
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "标题",
                  hintText: "请输入标题",
                ),
                // 校验用户名（不能为空）
                validator: (v) {
                  return v.trim().isNotEmpty ? null : "标题不能为空";
                }),
            SizedBox(
              height: 10,
            ),
            TextFormField(
                // style: TextStyle(height: 100),
                autofocus: false,
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "内容",
                  hintText: "请输入内容",
                ),
                // 校验用户名（不能为空）
                validator: (v) {
                  return v.trim().isNotEmpty ? null : "内容不能为空";
                }),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Text("请上传文件"),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.add,
                  size: 70.0,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                      height: 45,
                      width: 350,
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("确认", style: TextStyle(color: Colors.white))
                        ],
                      )),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
