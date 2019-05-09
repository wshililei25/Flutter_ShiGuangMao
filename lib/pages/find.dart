import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/widget/divider.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.notifications_none, color: ColorUtils.red),
        title: Text(
          StringUtils.find,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: <Widget>[
          Center(
              child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text('临汾店', style: TextStyle(color: ColorUtils.red))))
        ],
      ),
      body: ListView(
        children: <Widget>[
          _item('images/othericon1.png', StringUtils.interaction),
          DividerWidget(1),
          _item('images/othericon2.png', StringUtils.wedding_invitation),
          DividerWidget(1),
          _item('images/othericon3.png', StringUtils.time_first),
          DividerWidget(8),
          _item('images/othericon4.png', StringUtils.integral_mall),
          DividerWidget(8),
          _item('images/othericon5.png', StringUtils.on_selection),
        ],
      ),
    );
  }

  Widget _item(String image, String name) {
    return Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        color: Colors.white,
        child: ListTile(
          leading: Image(image: AssetImage(image), width: 45, height: 45),
          title: Text(name),
          trailing: Icon(Icons.chevron_right, color: ColorUtils.black),
        ));
  }
}
