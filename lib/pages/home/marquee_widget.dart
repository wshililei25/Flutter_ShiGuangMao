import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee_flutter/marquee_flutter.dart';
import 'package:provide/provide.dart';

import '../../provide/information_provide.dart';
import '../../utils/color_utils.dart';
import '../../utils/string_utils.dart';

class MarqueWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getInformation(context);
    return Provide<InformationProvide>(
      builder: (context, child, val) {
        List list = Provide.value<InformationProvide>(context).list;
        if (list != null) {
          return Container(
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.all(6),
                child: Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.room, color: ColorUtils.red),
                        Text(
                          StringUtils.time_first,
                          style:
                              TextStyle(color: ColorUtils.black, fontSize: 14),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(455),
                          height: 20,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: MarqueeWidget(
                            text: list[0].content,
                            textStyle: TextStyle(
                                fontSize: 15, color: ColorUtils.black),
                            scrollAxis: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      top: 4,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          StringUtils.more,
                          style: TextStyle(color: ColorUtils.red, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                )),
          );
        } else {
          return Text('');
        }
      },
    );
  }

  Future _getInformation(BuildContext context) async {
    await Provide.value<InformationProvide>(context).getInformation();
    return '加载完成';
  }
}
