import 'package:flutter/material.dart';
import 'package:huan/pages/search/search_data.dart';
import 'package:huan/widgets/common_floating_action_button.dart';
import 'package:huan/widgets/room_list_item_widget.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, initialIndex: 0,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CommonFloatActionButton('发布房源', (){
            Navigator.of(context).pushNamed('roomAdd');
          }),
          appBar: AppBar(title: Text('房屋管理'),
            bottom: TabBar(tabs: [
              Tab(text: '已租',),
              Tab(text: '空置',),
            ],
            ),
          ),
          body: TabBarView(
            children: [
            ListView(children: dataList.map((e) => RoomListItemWidget(e)).toList(),padding: EdgeInsets.only(top: 10),),
            ListView(children: dataList.map((e) => RoomListItemWidget(e)).toList(),padding: EdgeInsets.only(top: 10),),
          ],),
        )
    );
  }
}

