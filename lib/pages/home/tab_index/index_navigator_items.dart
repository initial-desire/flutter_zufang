import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUri;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUri, this.onTap);

  static List<IndexNavigatorItem> navigatorItemList = [
    IndexNavigatorItem('整租', 'static/images/user_icon.png', (BuildContext context){
      Navigator.of(context).pushNamed('login');
    }),
    IndexNavigatorItem('合租', 'static/images/user_icon.png', (BuildContext context){
      Navigator.of(context).pushNamed('login');
    }),
    IndexNavigatorItem('地图找房', 'static/images/user_icon.png', (BuildContext context){
      Navigator.of(context).pushNamed('login');
    }),
    IndexNavigatorItem('去出租', 'static/images/user_icon.png', (BuildContext context){
      Navigator.of(context).pushNamed('login');
    }),
  ];

}