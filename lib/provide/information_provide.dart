import 'dart:convert' as Convert;

import 'package:flutter/material.dart';

import '../entity/information.dart';
import '../service/service_method.dart';
import '../service/service_url.dart';

class InformationProvide with ChangeNotifier {
  List list = null;

  getInformation() async {
    var formData = {'currentPage': '1', 'type': '0'};
    await requestGet(ServiceUrl.information, formData: formData).then((val) {
      var result = Convert.jsonDecode(val.toString());

      list = InformationEntity.fromJson(result).data;
      notifyListeners();
    });
  }
}
