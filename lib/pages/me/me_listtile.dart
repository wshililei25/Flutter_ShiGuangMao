import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/router/application.dart';
import 'package:flutter_shiguangmao/router/routers.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';

class MeListTileWidget extends StatelessWidget {
  BuildContext context;
  String userId;

  MeListTileWidget(this.userId);

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return SliverList(
        delegate: SliverChildListDelegate([
      _item('images/clipboard.png', StringUtils.my_order),
      DividerWidget(1),
      _item('images/coin.png', StringUtils.my_deposit),
      DividerWidget(8),
      _item('images/heart6.png', StringUtils.my_follow),
      DividerWidget(1),
      _item('images/quan2.png', StringUtils.my_coupon),
      DividerWidget(1),
      _item('images/hongbao.png', StringUtils.red_page),
      DividerWidget(1),
      _item('images/address_package.png', StringUtils.address_manager),
      DividerWidget(1),
      _item('images/creditcard.png', StringUtils.withdraw_account),
      DividerWidget(1),
      _item('images/question.png', StringUtils.news_help),
      DividerWidget(1),
      _item('images/telephone.png', StringUtils.custom_phone),
      DividerWidget(10),
      _item('images/share.png', StringUtils.share_money),
      DividerWidget(1),
      _item('images/highlighter.png', StringUtils.recommendations),
      DividerWidget(8),
      _item('images/settings.png', StringUtils.system_set),
      DividerWidget(10),
    ]));
  }

  Widget _item(String image, String name) {
    return Container(
      color: Colors.white,
      child: ListTile(
          onTap: () {
            if (userId.isEmpty) {
              Application.router.navigateTo(context, Routers.login);
            } else {
              switch (name) {
                case '系统设置':
                  Application.router.navigateTo(context, Routers.setting);
                  break;
              }
            }
          },
          leading: Image.asset(image, width: 25, height: 25),
          title: Text(name),
          trailing: Icon(Icons.chevron_right, color: ColorUtils.black_light)),
    );
  }
}
