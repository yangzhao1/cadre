import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/password/ForgetPW.dart';
import 'package:flutter_cadre/pages/password/UpdatePW.dart';

class Login extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  bool pwdShow = false; //密码是否显示明文
  GlobalKey _formKey = new GlobalKey<FormState>();
  bool _nameAutoFocus = true;
  // @override
  // void initState() {
// 自动填充上次登录的用户名，填充后将焦点定位到密码输入框
  // _unameController.text = Global.profile.lastLogin;
  //   if (_unameController.text != null) {
  //     _nameAutoFocus = false;
  //   }
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    // var gm = GmLocalizations.of(context);
    return Scaffold(
        // appBar: AppBar(title: Text(gm.login)),
        body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        color: Colors.grey,
        image: new DecorationImage(
            image: new AssetImage('images/bg_login.png'), fit: BoxFit.fill
            //这里是从assets静态文件中获取的，也可以new NetworkImage(）从网络上获取
            // centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
            ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "干部信息查询系统",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          SizedBox(height: 100),
          TextFormField(
              autofocus: _nameAutoFocus,
              controller: _unameController,
              decoration: InputDecoration(
                labelText: "账号",
                hintText: "请输入账号",
                prefixIcon: Icon(Icons.person),
              ),
              // 校验用户名（不能为空）
              validator: (v) {
                return v.trim().isNotEmpty ? null : "账号不能为空";
              }),
          TextFormField(
            controller: _pwdController,
            autofocus: !_nameAutoFocus,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(pwdShow ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      pwdShow = !pwdShow;
                    });
                  },
                )),
            obscureText: !pwdShow,
            //校验密码（不能为空）
            validator: (v) {
              return v.trim().isNotEmpty ? null : "密码不能为空";
            },
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "忘记密码",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ForgetPW()));
                    },
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(height: 55.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: _onLogin,
                textColor: Colors.white,
                child: Text("登录"),
              ),
            ),
          ),
        ],
      ),
    )));
  }

  void _onLogin() {
    Navigator.pushReplacementNamed(context, '/main');
  }
}
