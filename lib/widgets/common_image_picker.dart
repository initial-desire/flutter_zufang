import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:huan/widgets/common_image.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defaultImage = [
'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
];
// 图片的宽度，高度，宽高比
var imageWidth = 750;
var imageHeight = 424;
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;

  const CommonImagePicker({Key key, this.onChange}) : super(key: key);

  @override
  _CommonImagePickerState createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {

  List<File> files = [];

  // 从手机获取图片
  _pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if(null==image)return;
    setState(() {
      files = files..add(image);
    });
    if(widget.onChange!=null){  //通知父级
      widget.onChange(files);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10 * 4) / 3;
    var height = width / imageWidthHeightRatio;

    // 新增图片按钮
    Widget addButton = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _pickImage,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: Colors.grey),
        child: Center(child: Text('+', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),),),
      ),
    );

    // 新增图片方法
    Widget wrapper(File file){
      return Stack( //层叠布局
        overflow: Overflow.visible,
        children: [
          Image.file(file, width: width, height: height,),
          Positioned( //定位
            right: -20,
            top: -20,
            child: IconButton(
              onPressed: (){
                setState(() {
                  files = files..remove(file);  //删除图片
                  if(null!=widget.onChange){  //通知父级
                    widget.onChange(files);
                  }
                });
              },
              icon: Icon(Icons.delete_forever),
              color: Colors.red,
            )
          )
        ],
      );
      // return Image.file(file, width: width, height: height,);
    }

    // 图片列表
    List<Widget> list = files.map((e) => wrapper(e)).toList()..add(addButton);

    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: list,
      ),
    );
  }
}
