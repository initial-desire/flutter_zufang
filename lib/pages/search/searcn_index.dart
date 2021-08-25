import 'package:flutter/material.dart';
import 'package:huan/pages/search/filter_bar/filter_drawer.dart';
import 'package:huan/pages/search/filter_bar/index.dart';
import 'package:huan/pages/search/search_data.dart';
import 'package:huan/widgets/common_image.dart';
import 'package:huan/widgets/room_list_item_widget.dart';
import 'package:huan/widgets/search_bar/search_bar_index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key key}) : super(key: key);

  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(elevation: 0,
        actions: [Container()],
        title: SearchBar(showLocation: true,showMap: true,
        onSearch: (){
          Navigator.of(context).pushNamed('search');
        },),backgroundColor: Colors.white,),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 41,
            child: FilterBar(onChange: (data){},),
          ),
          Expanded(child: ListView(
            children: dataList.map((e) => RoomListItemWidget(e)).toList(),
          ))
        ],
      ),
    );
  }
}
