import 'package:flutter/material.dart';

class SecreySetting extends StatefulWidget {
  SecreySetting({Key key}) : super(key: key);

  _SecreySettingState createState() => _SecreySettingState();
}

class _SecreySettingState extends State<SecreySetting> {
  TextEditingController _titleController = new TextEditingController();
  TextEditingController _contentController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("保密设置"),
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
                  labelText: "系统保密提示",
                  hintText: "请输入..",
                ),
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
