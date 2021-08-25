import 'package:flutter/material.dart';
import 'package:huan/utils/common_picker.dart';
import 'package:huan/widgets/common_form_item.dart';

class CommonFormSelect extends StatelessWidget {

  final String label;
  final List<String> options;
  final int value;
  final Function(int) onChange;

  const CommonFormSelect({Key key, this.label, this.options, this.value, this.onChange}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context){
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){
            var result = CommonPicker.showPicker(context, options, value, 300);
            result.then((selectValue) => {
              if(value!=selectValue && selectValue!=null && onChange!=null){
                onChange(selectValue)
              }
            });
          },
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(options[value], style: TextStyle(fontSize: 16),),
                Icon(Icons.keyboard_arrow_right)
              ],),
          ),
        );
      },
    );
  }
}
