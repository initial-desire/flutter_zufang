import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
 * 封装统一选择器
 */
class CommonPicker {
  // BuildContext context;
  // List<String> options; //选项
  // int value;  //选中的值
  static Future<int> showPicker(
      BuildContext context,
      List<String> options,
      int value,
      double height){
    return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context){
        var buttonTextStyle = TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w600
        );
        var _controller = FixedExtentScrollController(initialItem: value);
        return Container(
          color: Colors.grey[200], height: height,
          child: Column(
            children: [
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text('取消', style: buttonTextStyle,)),
                    FlatButton(
                        onPressed: (){
                          Navigator.of(context).pop(_controller.selectedItem);
                        }, child: Text('确定', style: buttonTextStyle)),
                  ],
                ),
              ),
              Expanded(
                  child: CupertinoPicker(
                    scrollController: _controller,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                      itemExtent: 35,
                      onSelectedItemChanged: null,
                      children: options.map((e) => Text(e)).toList()
                  )
              )
            ],
          ),
        );
      }
    );
  }
}