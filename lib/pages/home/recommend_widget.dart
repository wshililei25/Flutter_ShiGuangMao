import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List images = [
      'images/mainphoto1.png',
      'images/mainphoto2.png',
      'images/mainphoto3.png',
      'images/mainphoto4.png',
    ];
    List names = [
      '热门拍摄景点',
      '总监摄影师推荐',
      '明星榜',
      '千款礼服租借',
    ];
    return SliverPadding(
        padding: EdgeInsets.all(10),
        sliver: SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return _item(images[index], names[index]);
            }, childCount: images.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5, //纵轴
              crossAxisSpacing: 5, //横轴
              childAspectRatio: 1.84, //子item的宽高比
            )));
  }

  Widget _item(String image, String name) {
    return Stack(
      children: <Widget>[
        Image.asset(image),
        Positioned(
            bottom: 5,
            right: 5,
            child: Text(
              name,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ))
      ],
    );
  }
}
