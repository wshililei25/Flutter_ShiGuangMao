import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provide/provide.dart';

import '../../provide/home_banner.dart';
import '../../service/service_url.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getBanner(context);
    return Provide<HomeBannerProvide>(builder: (context, child, val) {
      List bannerList = Provide.value<HomeBannerProvide>(context).bannerList;

      if (bannerList != null) {
        return Container(
          width: ScreenUtil().setWidth(750),
          height: ScreenUtil().setHeight(350),
          child: Swiper(
            itemCount: bannerList.length,
            pagination: SwiperPagination(alignment: Alignment.bottomRight),
            autoplay: true,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  child: Image.network(
                ServiceUrl.baseImageUrl + '${bannerList[index].imgurl}',
                fit: BoxFit.fill,
              ));
            },
          ),
        );
      } else {
        return Center(child: Text('加载中'));
      }
    });
  }

  Future _getBanner(BuildContext context) async {
    await Provide.value<HomeBannerProvide>(context).getHomeBanner();
    return '加载完成';
  }
}
