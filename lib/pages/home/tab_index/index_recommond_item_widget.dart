import 'package:flutter/material.dart';
import 'package:huan/pages/home/tab_index/index_recommond_data.dart';
import 'package:huan/widgets/common_image.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommondItemWidget extends StatelessWidget {

  final IndexRecommendItem data;

  const IndexRecommondItemWidget(this.data, {Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(data.navigateUri);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width - 10 * 3) / 2,  //屏幕宽度 - 3个间距宽度 / 2
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Text(data.title, style: textStyle,),
              Text(data.subTitle, style: textStyle,),
            ],),
            CommonImage(data.imageUri, width: 55,),
          ],
        ),
      ),
    );
  }
}
