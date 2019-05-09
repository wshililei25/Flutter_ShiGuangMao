import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/service/service_url.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:provide/provide.dart';

import '../../provide/feature_spot_provide.dart';
import '../../utils/string_utils.dart';

class FeatureSpotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getFeatureSpot(context);
    return Provide<FeatureSpotProvide>(
      builder: (context, child, val) {
        List list = Provide.value<FeatureSpotProvide>(context).list;
        if (list != null) {
          return SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return _item(list[index]);
                }, childCount: list.length),
              ));
        } else {
          //使用SliverList当数据还没有返回是必须返回SliverFillRemaining，否则报错
          return SliverFillRemaining(child: Text(''));
        }
      },
    );
  }

  Widget _item(item) {
    return Column(
      children: <Widget>[
        Image.network(ServiceUrl.baseImageUrl + item.imgurl),
        Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              item.title,
              style: TextStyle(fontSize: 16),
            )),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorUtils.red, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Text(StringUtils.hot_feature,
                  style: TextStyle(color: ColorUtils.red, fontSize: 11)),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, top: 3),
                child: Text(
                  '${StringUtils.rmb} ${item.amount}',
                  style: TextStyle(fontSize: 16, color: ColorUtils.red),
                ))
          ],
        )
      ],
    );
  }

  Future _getFeatureSpot(BuildContext context) async {
    await Provide.value<FeatureSpotProvide>(context).getFeatureSpot(true);
    return '加载完成';
  }
}
