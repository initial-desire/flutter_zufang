import 'package:flutter/material.dart';
import 'package:huan/pages/search/search_data.dart';
import 'package:huan/widgets/common_image.dart';
import 'package:huan/widgets/room_list_item_widget.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key key}) : super(key: key);

  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search'),),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(child: Text('xx'),height: 40,),
          Expanded(child: ListView(
            children: dataList.map((e) => RoomListItemWidget(e)).toList(),
          ))
        ],
      ),
    );
  }
}
