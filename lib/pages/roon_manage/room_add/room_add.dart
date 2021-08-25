import 'dart:io';

import 'package:flutter/material.dart';
import 'package:huan/widgets/common_floating_action_button.dart';
import 'package:huan/widgets/common_form_item.dart';
import 'package:huan/widgets/common_form_radio.dart';
import 'package:huan/widgets/common_from_select.dart';
import 'package:huan/widgets/common_image_picker.dart';
import 'package:huan/widgets/common_title.dart';
import 'package:huan/widgets/room_appliance.dart';

class RoomAddPage extends StatefulWidget {

  const RoomAddPage({Key key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0; //租赁方式
  int decorationType = 0; //装修
  int roomType = 0; //户型
  int floor = 0; //楼层
  int oriented = 0; //朝向

  var titleController = TextEditingController();  //标题
  var descController = TextEditingController(); //描述

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatActionButton('提交', (){Navigator.of(context).pushNamed('routeName');}),
        appBar: AppBar(
          title: Text('房源发布'),
        ),
        body: ListView(
          children: [
            CommonTitleWidget('房源信息'),
            CommonFormItem(label: '小区', contentBuilder: (context){
              return Container(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: (){
                    Navigator.of(context).pushNamed('search');
                  },
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('请选择小区', style: TextStyle(fontSize: 16),),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              );
            },),
            CommonFormItem(label: '租金', hintText: '请输入租金', suffixText: '元/月', controller: TextEditingController(),),
            CommonFormItem(label: '大小', hintText: '请输入房屋大小', suffixText: '㎡', controller: TextEditingController(),),
            CommonFormRadioItem(label: '租赁方式', options: ['合租', '整租'], value: rentType, onChange: (index) {
              setState(() {
                rentType = index;
              });
            },),
            CommonFormSelect(label: '户型', options: ['一室','两室','三室','四室'], value: roomType, onChange: (val){
              setState(() {
                roomType = val;
              });
            },),
            CommonFormSelect(label: '楼层', options: ['高楼层','中楼层','低楼层'], value: floor, onChange: (val){
              setState(() {
                floor = val;
              });
            },),
            CommonFormSelect(label: '朝向', options: ['东','南','西','北'], value: oriented, onChange: (val){
              setState(() {
                oriented = val;
              });
            },),
            CommonFormRadioItem(label: '装修', options: ['精装', '简装'], value: decorationType, onChange: (index) {
              setState(() {
                decorationType = index;
              });
            },),
            CommonTitleWidget('房源图片'),
            CommonImagePicker(
              onChange: (List<File> files){},
            ),
            CommonTitleWidget('房源标题'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: '请输入标题', border: InputBorder.none),
              ),
            ),
            CommonTitleWidget('房源配置'),
            RoomAppliance(
              onChange: (data){},
            ),
            CommonTitleWidget('房源描述'),
            Container(
              margin: EdgeInsets.only(bottom: 100),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                maxLines: 10, //最多10行
                controller: descController,
                decoration: InputDecoration(hintText: '请输入描述', border: InputBorder.none,),
              ),
            ),
          ],
        )
    );
  }
}


