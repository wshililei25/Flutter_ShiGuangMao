import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class FeatureTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Row(
          children: <Widget>[
            Image.asset(
              'images/hotphoto.png',
              width: ScreenUtil().setWidth(35),
              height: ScreenUtil().setHeight(35),
            ),
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('热门景点',
                    style: TextStyle(color: ColorUtils.black, fontSize: 14)))
          ],
        ));
  }
}
