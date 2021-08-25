import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('404'),),
      body: Text('页面不存在',style: TextStyle(fontWeight: FontWeight.w600),),
    );
  }
}
