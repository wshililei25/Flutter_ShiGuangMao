import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/provide/meal_provide.dart';
import 'package:flutter_shiguangmao/service/service_url.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/widget/base_appbar.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';
import 'package:provide/provide.dart';

import 'meal_list_widget.dart';

/**
 * 套餐
 */
class MealListPage extends StatefulWidget {
  String type;

  MealListPage(this.type);

  @override
  _MealListPageState createState() => _MealListPageState(type);
}

class _MealListPageState extends State<MealListPage>
    with SingleTickerProviderStateMixin {
  TabController mController;
  List<Tab> tabList;
  String type;
  var types = ['', '1', '0'];

  _MealListPageState(this.type);

  @override
  void initState() {
    super.initState();
    initTabData();
    mController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    mController.dispose();
  }

  initTabData() {
    tabList = <Tab>[Tab(text: '全部'), Tab(text: '私人定制'), Tab(text: '套餐')];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(context, StringUtils.select_meal),
      body: Column(
        children: <Widget>[
          Container(
              width: 750,
              height: 50,
              color: Colors.white,
              child: TabBar(
                  //指示器长短，tab：和tab一样长，label：和标签label 一样长
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: mController,
                  indicatorColor: ColorUtils.red,
                  labelColor: ColorUtils.red,
                  unselectedLabelColor: ColorUtils.black_light,
                  labelStyle: TextStyle(fontSize: 16),
                  tabs: tabList)),
          Expanded(
            child: TabBarView(
              controller: mController,
              /* children: <Widget>[
                _listView(type, ''),
                _listView(type, '1'),
                _listView(type, '0')
              ],*/
              /*children: types.map((item) {
                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(item.toString()),
//                      child: Text(type),
                    ),
                  ],
                );
              }).toList(),*/
              children: types.map((item) {
                return MealListWidget(type, item.toString());
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _listView(String type, String packageType) {
    _getMealList(type, packageType);
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
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      ServiceUrl.baseImageUrl + item.imgurl,
                      width: ScreenUtil().setWidth(265),
                      height: ScreenUtil().setHeight(166),
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                        child: Column(
                      children: <Widget>[Text(item.title)],
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
