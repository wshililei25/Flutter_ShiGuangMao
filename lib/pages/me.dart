import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';

import 'me/me_account.dart';
import 'me/me_listtile.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            leading: Icon(Icons.notifications_none, color: ColorUtils.red),
            actions: <Widget>[
              Center(
                  child: Padding(
                      padding: EdgeInsets.only(right: 15),
                      child:
                          Text('临汾店', style: TextStyle(color: ColorUtils.red))))
            ],
            expandedHeight: ScreenUtil().setHeight(450),
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/userbg.png'))),
              child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 25),
                  child: Row(
                    children: <Widget>[
                      ClipOval(
                          child: Image.asset('images/timg.jpg',
                              fit: BoxFit.cover, width: 80, height: 80)),
                      Container(
                        height: 80,
                        margin: EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          children: <Widget>[
                            Text('时光用户',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Image.asset('images/add.png',
                                      width: 30, height: 30),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text('关联用户',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14)))
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            )),
          ),
          MeAccountWidget(),
          SliverToBoxAdapter(child: DividerWidget(10)),
          MeListTileWidget()
        ],
      ),
    );
  }
}
