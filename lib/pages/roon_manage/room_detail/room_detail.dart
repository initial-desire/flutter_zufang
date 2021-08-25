import 'package:flutter/material.dart';
import 'package:huan/pages/home/info/info.dart';
import 'package:huan/pages/roon_manage/room_detail/room_detail_bottom.dart';
import 'package:huan/widgets/common_swipper.dart';
import 'package:huan/widgets/common_tag.dart';
import 'package:huan/widgets/common_title.dart';
import 'package:huan/widgets/room_appliance.dart';
import 'package:share/share.dart';

import 'room_detail_data.dart';

class RoomDetailPage extends StatefulWidget {
  const RoomDetailPage({Key key}) : super(key: key);

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {

  RoomDetailData data;
  bool isLike = false;
  bool showAllText = false;

  @override
  void initState() {
    setState(() {
      data = defaultData;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(null == data)return Container();

    bool showTextTool = data.subTitle.length > 100;

    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
        actions: [IconButton(icon: Icon(Icons.share), onPressed: (){
          Share.share('https://www.baidu.com');
        })],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(images: data.houseImages,),
              CommonTitleWidget(data.title),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(data.price.toString(), style: TextStyle(fontSize: 18, color: Colors.pink),),
                    Text('元/月(押一付三)', style: TextStyle(fontSize: 14, color: Colors.pink)),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.end, //底部对齐
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 6,),
                child: Wrap(
                  spacing: 5,
                  children: data.tags.map((e) => CommonTag(e)).toList(),
                ),
              ),
              Divider(color: Colors.grey, indent: 10, endIndent: 10,),
              Container(
                margin: EdgeInsets.only(left: 10,top: 6, right: 10),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    BaseInfoItem('面积：${data.size} 平米'),
                    BaseInfoItem('楼层：${data.floor}'),
                    BaseInfoItem('房型：${data.roomType}'),
                    BaseInfoItem('装修：精装'),
                  ],
                ),
              ),
              CommonTitleWidget('房屋配置'),
              RoomApplianceList(list: data.appliances,),
              CommonTitleWidget('房屋概况'),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.subTitle ?? '暂无数据', maxLines: showAllText ? null : 5,),   //通过显示最大行数，实现展开/收起
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        showTextTool ? GestureDetector(
                          onTap: (){
                            setState(() {
                              showAllText = !showAllText;
                            });
                          },
                          child: Row(children: [
                            Text(showAllText ? '收起' : '展开'),
                            Icon(showAllText ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
                          ],),
                        )
                        : Container(),
                        Text('举报', style: TextStyle(),)
                      ],
                    ),
                  ],
                ),
              ),
              CommonTitleWidget('彩泥喜欢'),
              Info()
            ],
          ),
          RoomDetailBottom(isLike, onTapFunction: (){
            setState(() {
              isLike = !isLike;
            });
          },)
        ],
      )
    );
  }
}

var buttonStyle = TextStyle(fontSize: 20, color: Colors.white);

 class BaseInfoItem extends StatelessWidget {
   final String textValue;
   const BaseInfoItem(this.textValue,{Key key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       width: (MediaQuery.of(context).size.width - 30)/2,
       child: Text(textValue, style: TextStyle(fontSize: 16),),
     );
   }
 }


