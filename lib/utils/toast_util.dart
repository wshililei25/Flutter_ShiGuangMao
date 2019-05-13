import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toast(String msg) {
  Fluttertoast.showToast(
      msg: msg, gravity: ToastGravity.BOTTOM, backgroundColor: Colors.black26);
}
