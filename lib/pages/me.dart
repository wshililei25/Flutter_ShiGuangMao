import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/entity/userinfo_sql.dart';
import 'package:flutter_shiguangmao/provide/userinfo_provide.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';
import 'package:provide/provide.dart';

import 'me/me_account.dart';
import 'me/me_appbar.dart';
import 'me/me_listtile.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provide.value<UserInfoProvide>(context).getUserInfo();
    return Provide<UserInfoProvide>(builder: (context, child, val) {
      UserSql userSql = Provide.value<UserInfoProvide>(context).userSql;
      return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            MeAppbarWidget(userSql),
            MeAccountWidget(userSql),
            SliverToBoxAdapter(child: DividerWidget(10)),
            MeListTileWidget(userSql == null ? '' : userSql.id.toString())
          ],
        ),
      );
    });
  }
}
