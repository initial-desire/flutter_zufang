import 'package:flutter/material.dart';
import 'package:huan/widgets/common_image.dart';
import 'index_navigator_items.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.0,bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: IndexNavigatorItem.navigatorItemList.map((e) => InkWell(
         onTap: (){
           e.onTap(context);
         },
          child: Column(children: <Widget>[
            CommonImage(e.imageUri, width: 47.5,), Text(e.title, style: TextStyle(fontWeight: FontWeight.w500),)
          ],),
        )).toList(),
      ),
    );
  }
}

