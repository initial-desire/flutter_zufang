import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:huan/router.dart';

// class PageContent extends StatefulWidget {
//   final String name;
//
//   const PageContent({Key key, this.name}) : super(key: key);
//
//
//
//   @override
//   _PageContentState createState() => _PageContentState();
// }
//
// class _PageContentState extends State<PageContent> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('当前页面：',textAlign:TextAlign.left,)),
//       body: ListView(children: <Widget>[
//         FlatButton(onPressed: (){
//           Navigator.pushNamed(context, Routers.home);
//         }, child: Text(Routers.home)),
//         FlatButton(onPressed: (){
//           Navigator.pushNamed(context, Routers.login);
//         }, child: Text(Routers.login)),
//         FlatButton(onPressed: (){
//           Navigator.pushNamed(context, '/detail/555');
//         }, child: Text("详情页：id:666")),
//         FlatButton(onPressed: (){
//           Navigator.pushNamed(context, Routers.notFount);
//         }, child: Text("页面不存在")),
//         FlatButton(onPressed: (){
//           Navigator.pushNamed(context, Routers.register);
//         }, child: Text("注册")),
//       ],),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem> [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '咨询'),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '搜索'),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '我的'),
//         ],
//       ),
//     );
//   }
// }


class PageContent extends StatelessWidget {

  final String name;

  const PageContent({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('当前页面：$name',textAlign:TextAlign.left,)),
      body: Text('好！', ),
    );
  }

  doOnPress(BuildContext context){
    Navigator.pushNamed(context, Routers.home);
  }

}


