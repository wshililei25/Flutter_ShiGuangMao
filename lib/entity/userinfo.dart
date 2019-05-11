class UserInfo {
  String code;
  String msg;
  Data data;

  UserInfo({this.code, this.msg, this.data});

  UserInfo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String nickname;
  String imgurl;
  String mobile;
  String password;
  String realName;
  String idCard;
  String cardBefore;
  String cardAfter;
  double totalAmount;
  double freezeAmount;
  double amount;
  int relatedUser;
  String type;
  double score;
  double credit;
  String requestCode;
  String registerTime;
  String lastLoginTime;
  int pid;
  double photoAmount;
  double extraAmount;
  String teacherType;
  int shopId;
  String level;
  String position;
  Null openid;
  String qqid;
  String weiboid;
  double totalDeposit;
  double deposit;
  String deviceToken;
  String deviceType;
  String token;
  Null authCode;
  bool work;
  String storeName;
  bool hot;
  int redPrompt;
  String alipay;

  Data(
      {this.id,
        this.nickname,
        this.imgurl,
        this.mobile,
        this.password,
        this.realName,
        this.idCard,
        this.cardBefore,
        this.cardAfter,
        this.totalAmount,
        this.freezeAmount,
        this.amount,
        this.relatedUser,
        this.type,
        this.score,
        this.credit,
        this.requestCode,
        this.registerTime,
        this.lastLoginTime,
        this.pid,
        this.photoAmount,
        this.extraAmount,
        this.teacherType,
        this.shopId,
        this.level,
        this.position,
        this.openid,
        this.qqid,
        this.weiboid,
        this.totalDeposit,
        this.deposit,
        this.deviceToken,
        this.deviceType,
        this.token,
        this.authCode,
        this.work,
        this.storeName,
        this.hot,
        this.redPrompt,
        this.alipay});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nickname = json['nickname'];
    imgurl = json['imgurl'];
    mobile = json['mobile'];
    password = json['password'];
    realName = json['realName'];
    idCard = json['idCard'];
    cardBefore = json['cardBefore'];
    cardAfter = json['cardAfter'];
    totalAmount = json['totalAmount'];
    freezeAmount = json['freezeAmount'];
    amount = json['amount'];
    relatedUser = json['relatedUser'];
    type = json['type'];
    score = json['score'];
    credit = json['credit'];
    requestCode = json['requestCode'];
    registerTime = json['registerTime'];
    lastLoginTime = json['lastLoginTime'];
    pid = json['pid'];
    photoAmount = json['photoAmount'];
    extraAmount = json['extraAmount'];
    teacherType = json['teacherType'];
    shopId = json['shopId'];
    level = json['level'];
    position = json['position'];
    openid = json['openid'];
    qqid = json['qqid'];
    weiboid = json['weiboid'];
    totalDeposit = json['totalDeposit'];
    deposit = json['deposit'];
    deviceToken = json['deviceToken'];
    deviceType = json['deviceType'];
    token = json['token'];
    authCode = json['authCode'];
    work = json['work'];
    storeName = json['storeName'];
    hot = json['hot'];
    redPrompt = json['redPrompt'];
    alipay = json['alipay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nickname'] = this.nickname;
    data['imgurl'] = this.imgurl;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['realName'] = this.realName;
    data['idCard'] = this.idCard;
    data['cardBefore'] = this.cardBefore;
    data['cardAfter'] = this.cardAfter;
    data['totalAmount'] = this.totalAmount;
    data['freezeAmount'] = this.freezeAmount;
    data['amount'] = this.amount;
    data['relatedUser'] = this.relatedUser;
    data['type'] = this.type;
    data['score'] = this.score;
    data['credit'] = this.credit;
    data['requestCode'] = this.requestCode;
    data['registerTime'] = this.registerTime;
    data['lastLoginTime'] = this.lastLoginTime;
    data['pid'] = this.pid;
    data['photoAmount'] = this.photoAmount;
    data['extraAmount'] = this.extraAmount;
    data['teacherType'] = this.teacherType;
    data['shopId'] = this.shopId;
    data['level'] = this.level;
    data['position'] = this.position;
    data['openid'] = this.openid;
    data['qqid'] = this.qqid;
    data['weiboid'] = this.weiboid;
    data['totalDeposit'] = this.totalDeposit;
    data['deposit'] = this.deposit;
    data['deviceToken'] = this.deviceToken;
    data['deviceType'] = this.deviceType;
    data['token'] = this.token;
    data['authCode'] = this.authCode;
    data['work'] = this.work;
    data['storeName'] = this.storeName;
    data['hot'] = this.hot;
    data['redPrompt'] = this.redPrompt;
    data['alipay'] = this.alipay;
    return data;
  }
}
