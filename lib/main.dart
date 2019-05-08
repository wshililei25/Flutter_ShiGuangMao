import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/pages/primary.dart';
import 'package:flutter_shiguangmao/pages/start.dart';
import 'package:provide/provide.dart';

import './provide/current_index.dart';
import './provide/home_banner.dart';
import './provide/information_provide.dart';
import './utils/color_utils.dart';

void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var homeBannerProvide = HomeBannerProvide();
  var IniformationProvide = InformationProvide();
  var providers = Providers();
  providers
    ..provide(Provider.value(currentIndexProvide))
    ..provide(Provider.value(homeBannerProvide))
    ..provide(Provider.value(IniformationProvide));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
}
