import 'dart:convert';

import 'package:flutter/material.dart';

import '../service/service_method.dart';
import '../service/service_url.dart';
import '../entity/feature_spot.dart';

class FeatureSpotProvide with ChangeNotifier {
  List list = null;

  getFeatureSpot(bool isHot) async {
    var formData = {'currentPage': '1', 'hot': isHot};
    await requestGet(ServiceUrl.featureSpot, formData: formData).then((val) {
      var result = json.decode(val.toString());

      list = FeatureSpotEntity.fromJson(result).data;
      notifyListeners();
    });
  }
}
