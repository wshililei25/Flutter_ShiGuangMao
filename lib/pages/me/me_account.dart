import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class MeAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.all(15),
        sliver: SliverGrid.count(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          children: <Widget>[
            _item('余额'),
            _item('积分'),
            _item('邀请码'),
          ],
        ));
  }

  Widget _item(name) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Text('---', style: TextStyle(fontSize: 18, color: ColorUtils.black,fontWeight: FontWeight.bold)),
          Text(name,
              style: TextStyle(fontSize: 12, color: ColorUtils.black_light))
        ]));
  }
}
