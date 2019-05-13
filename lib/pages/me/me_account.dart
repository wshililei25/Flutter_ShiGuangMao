import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/entity/userinfo_sql.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';

class MeAccountWidget extends StatelessWidget {
  UserSql userSql = null;

  MeAccountWidget(this.userSql);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      childAspectRatio: 1.5,
      children: <Widget>[
        _item(userSql == null ? '---' : userSql.amount.toString(), '余额'),
        _item(userSql == null ? '---' : userSql.score.toString(), '积分'),
        _item(userSql == null ? '---' : userSql.requestCode, '邀请码'),
      ],
    );
  }

  Widget _item(val, name) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Text(val,
              style: TextStyle(
                  fontSize: 18,
                  color: ColorUtils.black,
                  fontWeight: FontWeight.bold)),
          Text(name,
              style: TextStyle(fontSize: 12, color: ColorUtils.black_light))
        ]));
  }
}
