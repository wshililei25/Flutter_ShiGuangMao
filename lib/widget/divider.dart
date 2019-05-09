import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class DividerWidget extends StatelessWidget {
  double height = 8;

  DividerWidget(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(height: height, color: ColorUtils.bg);
  }
}
