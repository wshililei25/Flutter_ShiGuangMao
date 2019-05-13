import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shiguangmao/entity/userinfo.dart';
import 'package:flutter_shiguangmao/entity/userinfo_sql.dart';
import 'package:flutter_shiguangmao/utils/color_utils.dart';
import 'package:flutter_shiguangmao/utils/data_help.dart';
import 'package:flutter_shiguangmao/utils/string_utils.dart';
import 'package:flutter_shiguangmao/utils/toast_util.dart';

import '../../service/service_method.dart';
import '../../service/service_url.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var db = DataHelp();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 750,
        height: ScreenUtil().setHeight(1334),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            AppBar(
              //阴影高度
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              title: Text(StringUtils.login_account),
              actions: <Widget>[
                Center(
                    child: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text(StringUtils.forget_pwd,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))))
              ],
            ),
            Theme(
                data: ThemeData(
                    primaryColor: ColorUtils.red, hintColor: Colors.white),
                child: Container(
                    margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                    child: TextField(
                        controller: mobileController,
                        maxLength: 11,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            hintText: '请输入电话号码',
                            prefixIcon: Icon(Icons.phone, color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)))))),
            Theme(
                data: ThemeData(
                    primaryColor: ColorUtils.red,
                    hintColor: Colors.white,
                    textSelectionColor: Colors.white),
                child: Container(
                    margin: EdgeInsets.all(15),
                    child: TextField(
                        controller: pwdController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Colors.red,
                            contentPadding: EdgeInsets.all(15),
                            hintText: '请输入密码',
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)))))),
            Container(
                width: 750,
                margin: EdgeInsets.all(15),
                child: FlatButton(
                  onPressed: () {
                    _login(context);
                  },
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  textColor: Colors.white,
                  child: Text('登 录'),
                  color: ColorUtils.red,
                )),
            Container(
                width: 750,
                margin: EdgeInsets.fromLTRB(15, 8, 15, 15),
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  textColor: Colors.white,
                  child: Text('注 册'),
                )),
          ],
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    var formData = {
      'mobile': mobileController.text,
      'password': pwdController.text,
      'deviceToken': '',
      'deviceType': 'android',
      'type': '0'
    };
    await requestPost(ServiceUrl.login, formData: formData).then((val) {
      var result = json.decode(val.toString());
      UserInfo userInfo = UserInfo.fromJson(result);
      if (userInfo.code == '00') {
        db.deleteUser();
        db.saveUser(UserSql(
            userInfo.data.id,
            userInfo.data.nickname,
            userInfo.data.imgurl,
            userInfo.data.amount,
            userInfo.data.score,
            userInfo.data.requestCode));
        Future<int> count = db.getCount();
        count.then((cou) => print('count==$cou'));
        Navigator.pop(context);
      } else {
        toast(userInfo.msg);
      }
    });
  }
}
