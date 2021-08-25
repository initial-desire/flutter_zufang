import 'package:flutter/material.dart';

class LoginStatus extends StatefulWidget {
  const LoginStatus({Key key}) : super(key: key);

  @override
  _LoginStatusState createState() => _LoginStatusState();
}

Widget _notLoginBuilder(BuildContext context){
  return Container(
    padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
    decoration: BoxDecoration(color: Colors.green),
    height: 95,
    child: Row(
      children: [
        Container(
          height: 65,
          width: 65,
          margin: EdgeInsets.only(left:15, right: 15),
          child: CircleAvatar(backgroundImage: AssetImage('static/images/user_icon.png')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('login');
                  },
                  child: Text('登陆', style: loginStyle,),
                ),
                Text('/', style: loginStyle,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('register');
                  },
                  child: Text('注册', style: loginStyle,),
                ),
              ],),
            Text('登陆后可以体验更多',style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
    ),
  );
}

Widget _loginBuilder(BuildContext context){
  String userName = "用户名";
  String imageUrl = "static/icon/user.png";
  return Container(
    padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
    decoration: BoxDecoration(color: Colors.green),
    height: 95,
    child: Row(
      children: [
        Container(
          height: 65,
          width: 65,
          margin: EdgeInsets.only(left:15, right: 15),
          child: CircleAvatar(backgroundImage: AssetImage(imageUrl), backgroundColor: Colors.white,),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('login');
                  },
                  child: Text(userName, style: loginStyle,),
                ),
              ],),
            Text('查看编辑个人资料',style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
    ),
  );
}

var loginStyle = TextStyle(fontSize: 20, color: Colors.white);

class _LoginStatusState extends State<LoginStatus> {
  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
