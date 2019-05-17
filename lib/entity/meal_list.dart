class MealListEntity {
  String code;
  String msg;
  List<Data> data;

  MealListEntity({this.code, this.msg, this.data});

  MealListEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  int storeId;
  String storeName;
  String storeImgurl;
  String tel;
  String imgurl;
  String imgurls;
  String title;
  double price;
  double marketPrice;
  int sellCount;
  double evaStar;
  int clothCount;
  int filmCount;
  int rucheCount;
  String content;
  String createTime;
  String type;
  int packageType;
  int packagePhotoType;
  double frontMoney;
  bool attention;
  Null loginUid;

  Data(
      {this.id,
        this.storeId,
        this.storeName,
        this.storeImgurl,
        this.tel,
        this.imgurl,
        this.imgurls,
        this.title,
        this.price,
        this.marketPrice,
        this.sellCount,
        this.evaStar,
        this.clothCount,
        this.filmCount,
        this.rucheCount,
        this.content,
        this.createTime,
        this.type,
        this.packageType,
        this.packagePhotoType,
        this.frontMoney,
        this.attention,
        this.loginUid});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    storeName = json['storeName'];
    storeImgurl = json['storeImgurl'];
    tel = json['tel'];
    imgurl = json['imgurl'];
    imgurls = json['imgurls'];
    title = json['title'];
    price = json['price'];
    marketPrice = json['marketPrice'];
    sellCount = json['sellCount'];
    evaStar = json['evaStar'];
    clothCount = json['clothCount'];
    filmCount = json['filmCount'];
    rucheCount = json['rucheCount'];
    content = json['content'];
    createTime = json['createTime'];
    type = json['type'];
    packageType = json['packageType'];
    packagePhotoType = json['packagePhotoType'];
    frontMoney = json['frontMoney'];
    attention = json['attention'];
    loginUid = json['loginUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['storeId'] = this.storeId;
    data['storeName'] = this.storeName;
    data['storeImgurl'] = this.storeImgurl;
    data['tel'] = this.tel;
    data['imgurl'] = this.imgurl;
    data['imgurls'] = this.imgurls;
    data['title'] = this.title;
    data['price'] = this.price;
    data['marketPrice'] = this.marketPrice;
    data['sellCount'] = this.sellCount;
    data['evaStar'] = this.evaStar;
    data['clothCount'] = this.clothCount;
    data['filmCount'] = this.filmCount;
    data['rucheCount'] = this.rucheCount;
    data['content'] = this.content;
    data['createTime'] = this.createTime;
    data['type'] = this.type;
    data['packageType'] = this.packageType;
    data['packagePhotoType'] = this.packagePhotoType;
    data['frontMoney'] = this.frontMoney;
    data['attention'] = this.attention;
    data['loginUid'] = this.loginUid;
    return data;
  }
}
