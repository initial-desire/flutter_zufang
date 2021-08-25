import 'package:flutter/material.dart';
import 'package:huan/widgets/common_filter_item.dart';
import 'package:huan/widgets/common_title.dart';

import 'data.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            CommonTitleWidget('户型'),
            CommonFilterItem(list: roomTypeList, selectedIds: ['2'],),
            CommonTitleWidget('朝向'),
            CommonFilterItem(list: orientedTypeList, selectedIds: ['2','3'],),
            CommonTitleWidget('楼层'),
            CommonFilterItem(list: floorList,),
          ],
        ),
      )
    );
  }
}

