import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/pages/meal/meal_list_page.dart';
import 'package:flutter_shiguangmao/pages/setting/setting.dart';
import 'package:flutter_shiguangmao/pages/user/login_page.dart';
import 'package:flutter_shiguangmao/widget/webview_page.dart';

Handler loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginPage();
});

Handler settingHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SettingPage();
});
Handler webviewHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return WebViewPage();
//  return WebViewPage(params['aaa'].first);
});

Handler mealListHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MealListPage(params['type'].first);
});
