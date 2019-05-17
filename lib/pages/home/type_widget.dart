import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/router/application.dart';
import 'package:flutter_shiguangmao/router/routers.dart';
import 'package:flutter_shiguangmao/type/photograph_type.dart';

class TypeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        sliver: SliverGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 20, //纵轴
          crossAxisSpacing: 20, //横轴
          children: <Widget>[
            _item(context, 'images/cate1.png', '婚纱摄影'),
            _item(context, 'images/cate2.png', '写真摄影'),
            _item(context, 'images/cate3.png', '宝宝摄影'),
            _item(context, 'images/cate4.png', '礼服馆'),
            _item(context, 'images/cate5.png', '时光云盘'),
            _item(context, 'images/cate6.png', '时光超市'),
            _item(context, 'images/cate7.png', '随行拍'),
            _item(context, 'images/cate8.png', '积分商城'),
          ],
        ));
  }

  Widget _item(BuildContext context, String image, String name) {
    return InkWell(
      onTap: () {
        switch (name) {
          case '婚纱摄影':
            Application.router.navigateTo(
                context, '${Routers.mealList}?type=${PhotographType.wedding}');
            break;
          case '写真摄影':
            Application.router.navigateTo(
                context, '${Routers.mealList}?type=${PhotographType.photo}');
            break;
          case '宝宝摄影':
            Application.router.navigateTo(
                context, '${Routers.mealList}?type=${PhotographType.baby}');
            break;
        }
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: ScreenUtil().setWidth(80),
            height: ScreenUtil().setHeight(80),
          ),
          Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                name,
                style: TextStyle(fontSize: 13),
              ))
        ],
      ),
    );
  }
}
