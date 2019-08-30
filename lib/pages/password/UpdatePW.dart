import 'package:flutter/material.dart';

class UpdatePW extends StatefulWidget {
  UpdatePW({Key key}) : super(key: key);

  _UpdatePWState createState() => _UpdatePWState();
}

class _UpdatePWState extends State<UpdatePW> {

  TextEditingController _oldPwdController = new TextEditingController();
  TextEditingController _newPwdController1 = new TextEditingController();
  TextEditingController _newPwdController2 = new TextEditingController();

  bool pwdShow = false; //密码是否显示明文
  GlobalKey _formKey = new GlobalKey<FormState>();
  bool _nameAutoFocus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("修改密码"),
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
                  autofocus: _nameAutoFocus,
                  controller: _oldPwdController,
                  decoration: InputDecoration(
                    labelText: "旧密码",
                    hintText: "请输入旧密码",
                    prefixIcon: Icon(Icons.lock,color:Theme.of(context).appBarTheme.color),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility_off : Icons.visibility,color: Colors.red),
                      onPressed: () {
                        setState(() {
                          pwdShow = !pwdShow;
                        });
                      },
                    )),
                  obscureText: !pwdShow,
                  // 校验密码（不能为空）
                  validator: (v) {
                    return v.trim().isNotEmpty ? null : "旧密码不能为空";
                  }),
              TextFormField(
                controller: _newPwdController1,
                autofocus: !_nameAutoFocus,
                decoration: InputDecoration(
                    labelText: "新密码",
                    hintText: "请输入新密码",
                    prefixIcon: Icon(Icons.lock,color:Theme.of(context).appBarTheme.color),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility_off : Icons.visibility,color: Colors.red),
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
                    prefixIcon: Icon(Icons.lock,color:Theme.of(context).appBarTheme.color),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility_off : Icons.visibility,color: Colors.red,),
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
                    color:Theme.of(context).appBarTheme.color,
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