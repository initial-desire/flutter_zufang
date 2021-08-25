import 'package:flutter/material.dart';
import 'package:huan/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('设置'),),
      body: ListView(
        children: [
          RaisedButton(
            onPressed: (){
              CommonToast.showToast("退出登录成功");
              Navigator.of(context).pushNamed('login');
            },
            child: Text('退出登录', style: TextStyle(color: Colors.red),),
          ),
        ],
      ),
    );
  }
}
