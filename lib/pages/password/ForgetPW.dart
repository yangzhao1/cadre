import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/password/NewPW.dart';
import 'package:flutter_cadre/pages/password/UpdatePW.dart';

class ForgetPW extends StatefulWidget {
  ForgetPW({Key key}) : super(key: key);

  _ForgetPWState createState() => _ForgetPWState();
}

class _ForgetPWState extends State<ForgetPW> {
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _codeController1 = new TextEditingController();

  GlobalKey _formKey = new GlobalKey<FormState>();
  bool _nameAutoFocus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("获取验证码"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              TextFormField(
                  autofocus: _nameAutoFocus,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: "手机号",
                    hintText: "请输入手机号",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (v) {
                    return v.trim().isNotEmpty ? null : "手机号不能为空";
                  }),
             
              TextFormField(
                  controller: _codeController1,
                  autofocus: !_nameAutoFocus,
                  decoration: InputDecoration(
                    labelText: "验证码",
                    hintText: "请输入验证码",
                    prefixIcon: Icon(Icons.access_time),
                    suffixIcon: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 40,
                          color: Colors.blue,
                        ),
                        Text("发送验证码", style: TextStyle(color: Colors.white))
                      ],
                  ),
                  ),
                  validator: (v) {
                    return v.trim().isNotEmpty ? null : "验证码不能为空";
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(height: 55.0),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: _onLogin,
                    textColor: Colors.white,
                    child: Text("下一步"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onLogin() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => NewPW()));
  }
}
