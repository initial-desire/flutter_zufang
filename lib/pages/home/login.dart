import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPwd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(children: <Widget>[
          TextField(decoration: InputDecoration(labelText: "用户名",hintText: "请输入用户名")),
          Padding(padding: EdgeInsets.all(10)),
          TextField(obscureText: !showPwd,decoration: InputDecoration(labelText: "密码",hintText: "请输入密码",
              suffixIcon: IconButton(icon:Icon(!showPwd?Icons.visibility:Icons.visibility_off), onPressed: () {
                setState(() {
                  showPwd = !showPwd;
                });
              })),),
          Padding(padding: EdgeInsets.all(10)),
          RaisedButton(color: Colors.green, child: Text("登陆", style: TextStyle(color: Colors.white),), onPressed: null),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("还没有账号,"), FlatButton(onPressed: (){
                Navigator.pushReplacementNamed(context, 'register');
              }, child: Text("去注册~", style: TextStyle(color: Colors.green),))
            ],)
        ],),
      )
    );
  }
}

