import 'package:flutter_shiguangmao/entity/userinfo_sql.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataHelp {
  int version = 1;
  static final DataHelp instance = DataHelp.internal();

  factory DataHelp() => instance;
  static Database _db;
  final String tableNote = 'flutterSgmTable';
  final String userId = 'id';
  final String nickname = 'nickname';
  final String userImgurl = 'imgurl';
  final String amount = 'amount';
  final String score = 'score';
  final String requestCode = 'requestCode';

  DataHelp.internal();

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'flutter_sgm.db');
    var db = await openDatabase(path, version: version, onCreate: _onCreate);
    print('数据库创建成功，version： $version');
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tableNote($userId INTEGER PRIMARY KEY AUTOINCREMENT, $nickname TEXT,$userImgurl TEXT'
        ',$amount REAL,$score REAL,$requestCode TEXT)');
    print("创建表成功！");
  }

  Future saveUser(UserSql userInfo) async {
    var dbCliect = await db;
    var result = dbCliect.insert(tableNote, userInfo.toJson());
    return result;
  }

  Future<int> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(
        await dbClient.rawQuery('SELECT COUNT(*) FROM $tableNote'));
  }

  Future<List> getAllUser() async {
    var dbClient = await db;
//    var result = await dbClient
//        .query(tableNote, columns: [userId, nickname]);
    var result = await dbClient.rawQuery('SELECT * FROM $tableNote');
    return result.toList();
  }

  /**
   * 清空数据
   */
  Future deleteUser() async {
    var dbCliect = await db;
    return await dbCliect.delete(tableNote);
  }

  /**
   * 关闭数据库
   */
  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}
