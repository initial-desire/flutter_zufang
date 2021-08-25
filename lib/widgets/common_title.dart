import 'package:flutter/material.dart';

class CommonTitleWidget extends StatelessWidget {

  final String title;

  const CommonTitleWidget(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
    );
  }
}
