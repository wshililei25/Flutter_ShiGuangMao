import 'dart:convert';

import 'package:flutter/material.dart';

import '../service/service_method.dart';
import '../service/service_url.dart';
import '../entity/banner.dart';

class HomeBannerProvide with ChangeNotifier {
  List bannerList = null;

  getHomeBanner() async {
    await requestGet(ServiceUrl.homeBanner).then((val) {
      var result = json.decode(val.toString());
      bannerList = BannerEntity.fromJson(result).data;
      notifyListeners();
    });
  }
}
