import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class DividerHorizontalWidget extends StatelessWidget {
  double width = 1;

  DividerHorizontalWidget(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(width: width, color: ColorUtils.bg);
  }
}
