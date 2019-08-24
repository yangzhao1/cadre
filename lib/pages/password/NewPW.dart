import 'package:flutter/material.dart';

class NewPW extends StatefulWidget {
  NewPW({Key key}) : super(key: key);

  _NewPWState createState() => _NewPWState();
}

class _NewPWState extends State<NewPW> {

  TextEditingController _newPwdController1 = new TextEditingController();
  TextEditingController _newPwdController2 = new TextEditingController();

  bool pwdShow = false; //密码是否显示明文
  GlobalKey _formKey = new GlobalKey<FormState>();
  bool _nameAutoFocus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("重置密码"),
        centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              TextFormField(
                controller: _newPwdController1,
                autofocus: !_nameAutoFocus,
                decoration: InputDecoration(
                    labelText: "新密码",
                    hintText: "请输入新密码",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          pwdShow = !pwdShow;
                        });
                      },
                    )),
                obscureText: !pwdShow,
                //校验密码（不能为空）
                validator: (v) {
                  return v.trim().isNotEmpty ? null : "新密码不能为空";
                },
              ),
              TextFormField(
                controller: _newPwdController2,
                autofocus: !_nameAutoFocus,
                decoration: InputDecoration(
                    labelText: "确认密码",
                    hintText: "请再次输入新密码",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          pwdShow = !pwdShow;
                        });
                      },
                    )),
                obscureText: !pwdShow,
                //校验密码（不能为空）
                validator: (v) {
                  return v.trim().isNotEmpty ? null : "二次密码不能为空";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(height: 55.0),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: _onLogin,
                    textColor: Colors.white,
                    child: Text("确认修改"),
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
    Navigator.pop(context);
  }
}