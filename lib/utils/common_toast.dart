import 'package:fluttertoast/fluttertoast.dart';

/*
 * 封装统一弹出框
 */
class CommonToast {
  static showToast(String msg){
    Fluttertoast.showToast(msg: msg, gravity: ToastGravity.CENTER);
  }
}

