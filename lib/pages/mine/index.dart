import 'package:flutter/material.dart';
import 'package:huan/pages/home/info/info.dart';
import 'package:huan/pages/mine/advert.dart';

import 'function_button.dart';
import 'login_status_area.dart';

class Mine extends StatefulWidget {
  const Mine({Key key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'),
        elevation: 0, //去掉appbar下面的边线
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: (){
        Navigator.of(context).pushNamed('setting');
      })],),
      body: ListView(
        children: [
          LoginStatus(),  //登陆状态区域
          FunctionButton(), //功能区域
          Advert(), //广告区域
          // Padding(padding: EdgeInsets.only(top: 10),),
          Info(showTitle: true,), //资讯区域
        ],
      ),
    );
  }
}
