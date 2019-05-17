import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/entity/meal_list.dart';

import '../service/service_method.dart';
import '../service/service_url.dart';

class MealProvide with ChangeNotifier {
  List list = null;

  getMealList(String type, String packageType) async {
    var formData = {'storeId': '4', 'type': type, 'packageType': packageType};

    await requestGet(ServiceUrl.mealList, formData: formData).then((val) {
      var result = json.decode(val.toString());
      list = MealListEntity.fromJson(result).data;
      notifyListeners();
    });
  }
}
