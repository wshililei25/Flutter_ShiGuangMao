import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/provide/meal_provide.dart';
import 'package:flutter_shiguangmao/service/service_url.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';
import 'package:provide/provide.dart';

class MealListWidget extends StatefulWidget {
  String type;
  String packageType;

  MealListWidget(this.type, this.packageType);

  @override
  _MealListWidgetState createState() => _MealListWidgetState();
}

class _MealListWidgetState extends State<MealListWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getMealList(widget.type, widget.packageType);
    return Provide<MealProvide>(builder: (context, child, val) {
      List list = Provide.value<MealProvide>(context).list;
      if (list != null) {
        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return _item(list[index]);
            });
      } else {
        return Text('');
      }
    });
  }

  Widget _item(item) {
    return InkWell(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      ServiceUrl.baseImageUrl + item.imgurl,
                      width: ScreenUtil().setWidth(265),
                      height: ScreenUtil().setHeight(166),
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: ScreenUtil().setHeight(166),
                      child: Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                item.title,
                                style: TextStyle(fontSize: 15),
                              )),
                          Expanded(
                              child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Text('${StringUtils.rmb}${item.price}',
                                    style: TextStyle(
                                        color: ColorUtils.red, fontSize: 15)),
                                Text('${StringUtils.rmb}${item.marketPrice}',
                                    style: TextStyle(
                                        color: ColorUtils.gray, fontSize: 13)),
                                Text(
                                  '已售${item.sellCount}次',
                                  style: TextStyle(
                                      color: ColorUtils.gray, fontSize: 11),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ))
                  ],
                )),
            DividerWidget(1)
          ],
        ),
      ),
    );
  }

  Future _getMealList(String type, String packageType) async {
    await Provide.value<MealProvide>(context).getMealList(type, packageType);
    return '加载完成';
  }
}
