import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:huan/router.dart';

class Application extends StatelessWidget {
  const Application({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routers.defineRoutes(router);
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      onGenerateRoute: router.generator,
    );
  }
}
