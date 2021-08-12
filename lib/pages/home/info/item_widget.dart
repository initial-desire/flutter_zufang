import 'package:flutter/material.dart';
import 'package:huan/pages/home/info/info_item_data.dart';
import 'package:huan/widgets/common_image.dart';

var textStyle = TextStyle(color: Colors.black45);
class ItemWidget extends StatelessWidget {
  final InfoItem data;

  const ItemWidget(this.data, {Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          CommonImage(data.imageUri, width: 120, height: 90,),
          Padding(padding: EdgeInsets.only(left: 10)),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.title, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(data.source, style: textStyle,),
                Text(data.time, style: textStyle,),
              ],)
            ],
          ))
        ],
      ),
    );
  }
}
