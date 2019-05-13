import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/pages/primary.dart';
import 'package:flutter_shiguangmao/pages/start.dart';
import 'package:flutter_shiguangmao/provide/userinfo_provide.dart';
import 'package:provide/provide.dart';

import './provide/current_index.dart';
import './provide/feature_spot_provide.dart';
import './provide/home_banner.dart';
import './provide/information_provide.dart';
import './utils/color_utils.dart';
import 'router/application.dart';
import 'router/routers.dart';

void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var homeBannerProvide = HomeBannerProvide();
  var iniformationProvide = InformationProvide();
  var featureSpotProvide = FeatureSpotProvide();
  var userInfoProvide = UserInfoProvide();
  var providers = Providers();
  providers
    ..provide(Provider.value(currentIndexProvide))
    ..provide(Provider.value(homeBannerProvide))
    ..provide(Provider.value(iniformationProvide))
    ..provide(Provider.value(featureSpotProvide))
    ..provide(Provider.value(userInfoProvide));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _initRouter();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: ColorUtils.red,
      ),
      home: StartPage(),
      routes: <String, WidgetBuilder>{
        '/PrimaryPage': (BuildContext context) => PrimaryPage(),
      },
    );
  }

  /**
   * 路由初始化
   */
  void _initRouter() {
    var router = Router();
    Routers.configRoute(router);
    Application.router = router;
  }
}
