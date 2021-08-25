import 'package:flutter/material.dart';

class RoomDetailBottom extends StatelessWidget {
  final bool isLike;
  final Function onTapFunction;

  RoomDetailBottom(this.isLike, {Key key, this.onTapFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: MediaQuery.of(context).size.width,
      height: 100,
      bottom: 0,
      child: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: (){
                if(onTapFunction != null)
                  onTapFunction();
              },
              child: Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(isLike?Icons.star:Icons.star_border, size: 24, color: isLike?Colors.green:Colors.black,),
                    Text(isLike?'已收藏':'收藏', style: TextStyle(fontSize: 12),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(6)),
                  child: Center(child: Text('联系房东', style: buttonStyle),),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Expanded(
              child: GestureDetector(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(6)),
                  child: Center(child: Text('预约看房', style: buttonStyle),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var buttonStyle = TextStyle(fontSize: 20, color: Colors.white);
