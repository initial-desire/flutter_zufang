import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:huan/pages/home/detail.dart';
import 'package:huan/pages/home/tab_index/index.dart';
import 'package:huan/pages/home/login.dart';
import 'package:huan/pages/home/register.dart';
import 'package:huan/pages/not_found.dart';
import 'package:huan/pages/roon_manage/index.dart';
import 'package:huan/pages/roon_manage/room_add/room_add.dart';
import 'package:huan/pages/roon_manage/room_detail/room_detail.dart';
import 'package:huan/pages/setting.dart';

class Routers{

  // 定义路由名称
  static String home = "/";
  static String login = "/login";
  static String roomDetail = "/roomDetail/:roomId";
  static String notFount = "/notFount";
  static String register = "/register";
  static String setting = "/setting";
  static String roomManage = "/roomManage";
  static String roomAdd = "/roomAdd";

  // 定义路由处理函数
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return HomePage();
  });
  static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return LoginPage();
  });
  static Handler _roomDetailHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return RoomDetailPage();
  });
  static Handler _notFountHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return NotFoundPage();
  });
  static Handler _registerHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return RegisterPage();
  });
  static Handler _settingHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return SettingPage();
  });
  static Handler _roomManageHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return RoomManagePage();
  });
  static Handler _roomAddHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return RoomAddPage();
  });

  // 关联路由名称和处理函数
  static void defineRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler = _notFountHandler;
  }


}

