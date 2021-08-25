import 'package:flutter/material.dart';

// 网络图片
final netWorkUriReg = RegExp('^http');
// 本地图片
final localUriReg = RegExp('^static');

// 统一图片组件
class CommonImage extends StatelessWidget {

  final String src;
  final double width;
  final double height;
  final Color color;
  final BoxFit fit;

  const CommonImage(this.src,{Key key, this.width, this.height, this.color, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(netWorkUriReg.hasMatch(src)){
      return Image.network(src, width: width, height: height, fit: BoxFit.fill, color: color,);
      // return Image(
      //   width: width,
      //   height: height,
      //   fit: fit,
      //   image: Image.network(src),
      //   //   src,
      //   //   useDiskCache: true, // 是否缓存
      //   //   cacheRule: CacheRule(maxAge: Duration(days: 7)),  //缓存规则
      //   //   timeoutDuration: Duration(seconds: 20), //超时时间
      //   // ),
      // );
    }
    if(localUriReg.hasMatch(src)){
      return Image.asset(src, width: width, height: height, fit: fit, color: color,);
    }
    // assert(false, '图片地址有误');  //提示
    return Container();
  }

}
