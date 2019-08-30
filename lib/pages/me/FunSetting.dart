import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/me/SecreySetting.dart';

class FunSetting extends StatefulWidget {
  FunSetting({Key key}) : super(key: key);

  _FunSettingState createState() => _FunSettingState();
}

class _FunSettingState extends State<FunSetting> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("功能化设置"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[300],
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  height: 50,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        top: 15,
                        bottom: 15,
                        child: Text("个性化设置"),
                      ),
                      Positioned(
                        right: 10,
                        top: 15,
                        bottom: 15,
                        child: Text("任免表"),
                      ),
                      Positioned(
                        right: 130,
                        top: 15,
                        bottom: 15,
                        child: Text("信息百科"),
                      ),
                      Positioned(
                        right: 60,
                        top: 15,
                        bottom: 15,
                        child: Switch(
                          value: _value,
                          onChanged: (newValue) {
                            setState(() {
                              _value = newValue;
                            });
                          },
                          activeColor: Colors.red,
                          activeTrackColor: Colors.black,
                          inactiveThumbColor: Colors.green,
                          inactiveTrackColor: Colors.blue,
                          // activeThumbImage: AssetImage(
                          //   'images/1.png',
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                GestureDetector(
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 10,
                          top: 15,
                          bottom: 15,
                          child: Text("保密设置"),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.chevron_right)),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>SecreySetting())
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
