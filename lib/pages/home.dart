import 'package:flutter/material.dart';

import '../pages/home/banner_widget.dart';
import '../pages/home/marquee_widget.dart';
import '../pages/home/recommend_widget.dart';
import '../pages/home/type_widget.dart';
import '../widget/divider.dart';
import '../utils/color_utils.dart';
import '../utils/string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.notifications_none, color: ColorUtils.red),
        title: Text(
          StringUtils.home,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: <Widget>[
          Center(
              child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text('临汾店', style: TextStyle(color: ColorUtils.red))))
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: false,
        slivers: <Widget>[
          SliverToBoxAdapter(child: BannerWidget()),
          TypeWidget(),
          SliverToBoxAdapter(child: DividerWidget(8)),
          SliverToBoxAdapter(child: MarqueWidget()),
          SliverToBoxAdapter(child: DividerWidget(8)),
          RecommendWidget(),
        ],
      ),
    );
  }
}
