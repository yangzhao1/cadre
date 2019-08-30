import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/dataBank/DataBank.dart';
import 'package:flutter_cadre/pages/history/History.dart';
import 'package:flutter_cadre/pages/login/Login.dart';
import 'package:flutter_cadre/pages/me/FunSetting.dart';
import 'package:flutter_cadre/pages/password/UpdatePW.dart';
import 'package:flutter_cadre/pages/tools/Toast.dart';

class Me extends StatefulWidget {
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("我的"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.red,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage('images/mrtx_icon.png'),
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("姓名: 李洪涛",
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("账号: lihongtao",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          ),
          // SizedBox(height: 10),
          // GestureDetector(
          //   child: Container(
          //     height: 40,
          //     color: Colors.white60,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: <Widget>[
          //         SizedBox(width: 20),
          //         Icon(
          //           Icons.access_alarm
          //         ),
          //         SizedBox(width: 20),
          //         Text("收藏夹管理"),
          //       ],
          //     ),
          //   ),
          //   onTap: () {
          //     // print("收藏夹");
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (context) => Collect()));
          //   },
          // ),
          SizedBox(height: 10),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/lljl_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("浏览记录"),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BrowsHistory()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/zlk_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("资料库"),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DataBank()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/znyy_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("智能语音助手"),
                ],
              ),
            ),
            onTap: () {
              Toast.toast(context,msg:'敬请期待');
            },
          ),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/sz_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("功能设置"),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context)=>FunSetting()
                        )
                      );
            },
          ),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/xgmm_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("修改密码"),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UpdatePW()));
            },
          ),
          GestureDetector(
            child: Container(
              height: 40,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/bbgx_icon.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Text("版本更新"),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Container(
                height: 45,
                width: 350,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("退出登录", style: TextStyle(color: Colors.white))
                  ],
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Login()));
            },
          )
        ],
      )),
    );
  }
}
