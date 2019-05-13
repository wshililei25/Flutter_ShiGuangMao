import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class BaseAppbar extends AppBar {
  BuildContext context;
  String name = '';
  String rightTitle = '';

  BaseAppbar(this.context, this.name, this.rightTitle);

  @override
  Widget get leading => InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back, color: ColorUtils.red));

  @override
  bool get centerTitle => true;

  @override
  Color get backgroundColor => Colors.white;

  @override
  Widget get title =>
      Text(name, style: TextStyle(color: ColorUtils.black, fontSize: 18));

  @override
  List<Widget> get actions => <Widget>[
        Center(
            child: Container(
                padding: EdgeInsets.only(right: 15),
                child: Text(rightTitle,
                    style: TextStyle(color: ColorUtils.black, fontSize: 15))))
      ];
}
