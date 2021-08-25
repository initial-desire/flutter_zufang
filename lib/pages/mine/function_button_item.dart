import 'package:flutter/material.dart';
import 'package:huan/pages/mine/function_button_data.dart';
import 'package:huan/widgets/common_image.dart';

class FunctionButtonWidget extends StatelessWidget {

  final FunctionButtonItem data;

  const FunctionButtonWidget(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(null!=data.onTapHandle){
          return data.onTapHandle(context);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.33,
        height: 110,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            CommonImage(data.imageUrl, width: 100, height: 60, color: Colors.green,),
            Text(data.title),
          ],
        ),
      ),
    );
  }
}
