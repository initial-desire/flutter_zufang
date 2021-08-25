import 'package:flutter/material.dart';
import 'package:huan/widgets/common_image.dart';

class Advert extends StatelessWidget {

  final String url;

  Advert( {Key key, this.url = "https://tva1.sinaimg.cn/large/006y8mN6ly1g6te62n8f4j30j603vgou.jpg",}) : super(key: key);

  // 图片地址  https://tva1.sinaimg.cn/large/006y8mN6ly1g6te62n8f4j30j603vgou.jpg

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      padding: EdgeInsets.all(10),
      child: CommonImage(url),
    );
  }
}
