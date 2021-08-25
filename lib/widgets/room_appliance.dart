import 'package:flutter/material.dart';
import 'package:huan/widgets/common_check_button.dart';
import 'package:huan/widgets/common_image.dart';

/*
 * 房屋配置相关组件
 */
class RoomApplianceItem {
  final String title;
  final String iconUrl;
  final bool isChecked;

  const RoomApplianceItem(this.title, this.iconUrl, this.isChecked);

}

// 所有房屋配置选项
const List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('衣柜', 'static/icon/room/yigui.png', false),
  RoomApplianceItem('宽带', 'static/icon/room/WiFi.png', false),
  RoomApplianceItem('淋浴', 'static/icon/room/linyu.png', false),
  RoomApplianceItem('电视', 'static/icon/room/dianshi.png', false),
  RoomApplianceItem('暖气', 'static/icon/room/nuanqi.png', false),
  RoomApplianceItem('冰箱', 'static/icon/room/bingxiang.png', false),
  RoomApplianceItem('天然气', 'static/icon/room/tianranqi.png', false),
  RoomApplianceItem('空调', 'static/icon/room/kongtiao.png', false),
  RoomApplianceItem('洗衣机', 'static/icon/room/xiyiji.png', false),
  RoomApplianceItem('沙发', 'static/icon/room/shafa.png', false),
];

// 新增页面配置选择，包含图片展示和选择功能
class RoomAppliance extends StatefulWidget {

  final ValueChanged<List<RoomApplianceItem>> onChange;

  const RoomAppliance({Key key, this.onChange}) : super(key: key);

  @override
  _RoomApplianceState createState() => _RoomApplianceState();
}

class _RoomApplianceState extends State<RoomAppliance> {
  List<RoomApplianceItem> list = _dataList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 30,
        children: list.map((item) =>  GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){
            setState(() {
              list = list.map((innerItem) => innerItem==item
                  ? RoomApplianceItem(item.title, item.iconUrl, !item.isChecked)
                  : innerItem).toList();
              if(null!=widget.onChange){
                widget.onChange(list);
              }
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonImage(item.iconUrl, width: 23, height: 23,),
                Padding(padding: EdgeInsets.all(10), child: Text(item.title),),
                CommonCheckButton(isChecked: item.isChecked,)
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}


// 房屋配置展示页面，不包含选择，根据后台数据显示有的配置
class RoomApplianceList extends StatelessWidget {
  final List<String> list;

  const RoomApplianceList({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var showList = _dataList.where((element) => list.contains(element.title)).toList();
    if(showList.length==0){
      return Container(child: Text('暂无数据',), padding: EdgeInsets.only(left: 10),);
    }
    return Container(
      child: Wrap(
        runSpacing: 30,
        children: showList.map((item) => Container(
          width: MediaQuery.of(context).size.width / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonImage(item.iconUrl, width: 23, height: 23,),
              Padding(padding: EdgeInsets.all(10), child: Text(item.title),),
            ],
          ),
        ),).toList(),
      ),
    );
  }
}
