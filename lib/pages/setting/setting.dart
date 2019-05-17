import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/data_help.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/widget/base_appbar.dart';

/**
 * 系统设置
 */
class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppbar(context, StringUtils.system_set),
      body: Column(
        children: <Widget>[
          Container(
              width: 750,
              margin: EdgeInsets.all(15),
              child: FlatButton(
                onPressed: () {
                  DataHelp().deleteUser();
                  Navigator.pop(context);
                },
                padding: EdgeInsets.only(top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                textColor: Colors.white,
                child: Text(StringUtils.out_login),
                color: ColorUtils.red,
              )),
        ],
      ),
    );
  }
}
