import 'package:flutter/material.dart';
import 'package:huan/pages/search/filter_bar/data.dart';

class CommonFilterItem extends StatelessWidget {
  final List<GeneralType> list;
  final List<String> selectedIds;
  final ValueChanged<String> onChange;

  const CommonFilterItem({Key key, this.list, this.selectedIds, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: list.map((e){
          var isActive = false;
          if(selectedIds!=null){
            isActive = selectedIds.contains(e.id);
          }
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: (){
              if(onChange!=null){
                onChange(e.id);
              }
            },
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.green), color: isActive? Colors.green : Colors.white),
              child: Center(
                child: Text(e.name, style: TextStyle(color: isActive? Colors.white : Colors.green),),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}