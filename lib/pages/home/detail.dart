import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String id;

  const DetailPage({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情@:$id'),),
    );
  }

}


