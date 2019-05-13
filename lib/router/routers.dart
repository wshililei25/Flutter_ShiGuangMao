import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/router/router_handler.dart';

class Routers {
  static String login = '/login';
  static String setting = '/setting';

  static void configRoute(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('路由不存在');
    });
    router.define(login, handler: loginHandler);
    router.define(setting, handler: settingHandler);
  }
}
