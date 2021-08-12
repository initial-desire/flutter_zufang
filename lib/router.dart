import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:huan/pages/home/detail.dart';
import 'package:huan/pages/home/tab_index/index.dart';
import 'package:huan/pages/home/login.dart';
import 'package:huan/pages/home/register.dart';
import 'package:huan/pages/not_found.dart';

class Routers{

  // 定义路由名称
  static String home = "/";
  static String login = "/login";
  static String detail = "/detail/:id";
  static String notFount = "/notFount";
  static String register = "/register";

  // 定义路由处理函数
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return HomePage();
  });
  static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return LoginPage();
  });
  static Handler _detailHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return DetailPage(id: params['id'][0],);
  });
  static Handler _notFountHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return NotFoundPage();
  });
  static Handler _registerHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params){
    return RegisterPage();
  });

  // 关联路由名称和处理函数
  static void defineRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(detail, handler: _detailHandler);
    router.define(register, handler: _registerHandler);
    router.notFoundHandler = _notFountHandler;
  }


}

