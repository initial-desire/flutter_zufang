import 'package:flutter/material.dart';
import 'package:huan/pages/home/info/info.dart';
import 'package:huan/pages/home/info/info_item_data.dart';
import 'package:huan/pages/home/info/item_widget.dart';

class News extends StatefulWidget {

  final List<InfoItem> dataList;

  const News({Key key, this.dataList}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('资讯'),),
      body: ListView(
        children: [
          Padding(padding:  EdgeInsets.only(bottom: 10)),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}

