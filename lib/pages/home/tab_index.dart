import 'package:flutter/material.dart';
import 'package:huan/pages/home/tab_index/index_recommond.dart';
import 'package:huan/widgets/common_swipper.dart';

import 'info/info.dart';
import 'tab_index/index_navigator.dart';

class TableIndex extends StatefulWidget {
  const TableIndex({Key key}) : super(key: key);

  @override
  _TableIndexState createState() => _TableIndexState();
}

class _TableIndexState extends State<TableIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommend(),
          Info(showTitle: true,),
        ],
      ),
    );
  }
}
