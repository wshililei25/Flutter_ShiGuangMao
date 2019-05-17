import 'package:flutter/material.dart';
import 'package:flutter_shiguangmao/entity/userinfo_sql.dart';
import 'package:flutter_shiguangmao/utils/data_help.dart';

class UserInfoProvide with ChangeNotifier {
  UserSql userSql = null;

  getUserInfo() async {
    await DataHelp().getAllUser().then((list) {
      if (list != null && list.length > 0) {
        list.forEach((user) {
          print('用户信息=$user');
          print('用户信息 nickname =${user['nickname']}');
          userSql = UserSql(user['id'], user['nickname'], user['imgurl'],
              user['amount'], user['score'], user['requestCode']);
        });
        notifyListeners();
      } else { //退出登陆清空数据库并返回null
        userSql = null;
      }
      notifyListeners();
    });
  }
}
