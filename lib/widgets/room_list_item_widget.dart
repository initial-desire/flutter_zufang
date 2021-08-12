import 'package:flutter/material.dart';
import 'package:huan/pages/search/search_data.dart';
import 'package:huan/widgets/common_image.dart';
import 'package:huan/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {

  final RoomListItemData data;

  const RoomListItemWidget(this.data, {Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10,bottom: 15),
      child: Row(
        children: [
          CommonImage(data.imageUri, width: 132.5, height: 100,),
          Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w600),),
              Text(data.subTitle,maxLines: 1, overflow: TextOverflow.ellipsis,),
              Wrap(children: data.tags.map((e) => CommonTag(e)).toList(),),
              Text("${data.price} 元/月", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.orange, fontSize: 16),),
            ],
          ))
        ],
      ),
    );
  }
}
