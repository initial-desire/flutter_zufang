import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huan/pages/home/tab_index/index_recommond_data.dart';

import 'index_recommond_item_widget.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({Key key, this.dataList = indexRecommendData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white10),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text('房屋推荐', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
          Text('更多', style: TextStyle(color: Colors.black45),),
        ],),
        Padding(padding: EdgeInsets.all(5)),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: dataList.map((e) => IndexRecommondItemWidget(e)
        ).toList(),)
      ],),
    );
  }
}
