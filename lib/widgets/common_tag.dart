import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color backgroundColor;

  const CommonTag.build(this.title, {Key key, this.color=Colors.black, this.backgroundColor=Colors.grey}) : super(key: key);

  factory CommonTag(String title){
    switch(title){
      case '贵贵贵':
        return CommonTag.build(title, color: Colors.red,backgroundColor: Colors.red[50],);
      case '精装修':
        return CommonTag.build(title, color: Colors.blue,backgroundColor: Colors.blue[50],);
      default:
        return CommonTag.build(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Text(title, style: TextStyle(fontSize: 10, color: color),),
    );
  }
}
