import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {

  final String label; //左侧文本
  final Widget Function(BuildContext context) contentBuilder;  //右侧组件，如果为空，则使用默认的右侧文本

  final Widget suffix;
  final String suffixText;

  final String hintText;  //文本提示
  final ValueChanged onChange;
  final TextEditingController controller;

  const CommonFormItem({Key key, this.label, this.contentBuilder, this.suffix, this.suffixText, this.hintText, this.onChange, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor)
        )
      ),
      // decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Container(width: 100, child: Text(label, style: TextStyle(fontSize: 15, color: Colors.black87),),),
          Expanded(child: contentBuilder!=null ? contentBuilder(context):TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
            controller: controller,
          )),

          if(suffix!=null)suffix,
          if(suffix==null && suffixText!=null)Text(suffixText),
        ],
      ),
    );
  }
}
