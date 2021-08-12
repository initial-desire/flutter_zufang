import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'common_image.dart';

const List<String> defaultImages = [
  'https://b-ssl.duitang.com/uploads/item/201605/10/20160510001106_2YjCN.thumb.700_0.jpeg',
  'https://y0.ifengimg.com/d4a44fff10624b98/2013/1021/rdn_526466b752409.jpg',
  'https://y0.ifengimg.com/d4a44fff10624b98/2013/1021/rdn_526466b752409.jpg',
];
int imageWidth = 700;
int imageHeight = 379;

class CommonSwiper extends StatelessWidget {
  final List<String> images;
// 700*379
  const CommonSwiper({Key key, this.images = defaultImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width / imageWidth*imageHeight);
    return Container(
      height: MediaQuery.of(context).size.width / imageWidth*imageHeight,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index){
          return CommonImage(images[index], fit: BoxFit.fill,);
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}
