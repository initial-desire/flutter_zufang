import 'package:flutter/material.dart';
import 'package:huan/router.dart';

class FunctionButtonItem {

  final String title;
  final String imageUrl;
  final Function onTapHandle;

  FunctionButtonItem(this.title, this.imageUrl, this.onTapHandle);

}

final List<FunctionButtonItem> functionButtonItemList = [
  FunctionButtonItem('看房记录', 'static/icon/record.png', null),
  FunctionButtonItem('我的订单', 'static/icon/ordered.png', null),
  FunctionButtonItem('我的收藏', 'static/icon/favorite.png', null),
  FunctionButtonItem('身份认证', 'static/icon/idCard.png', null),
  FunctionButtonItem('联系我们', 'static/icon/message.png', null),
  FunctionButtonItem('房屋管理', 'static/icon/house.png', (context){
    Navigator.of(context).pushNamed('roomManage');
    return;
  }),
  FunctionButtonItem('我的钱包', 'static/icon/wallet.png', null),
  FunctionButtonItem('电子合同', 'static/icon/contract.png', null),
];