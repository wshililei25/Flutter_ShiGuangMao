class FeatureSpotEntity {
  String code;
  String msg;
  List<FeatureSpot> data;
  Pi pi;

  FeatureSpotEntity({this.code, this.msg, this.data, this.pi});

  FeatureSpotEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<FeatureSpot>();
      json['data'].forEach((v) {
        data.add(new FeatureSpot.fromJson(v));
      });
    }
    pi = json['pi'] != null ? new Pi.fromJson(json['pi']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.pi != null) {
      data['pi'] = this.pi.toJson();
    }
    return data;
  }
}

class FeatureSpot {
  int id;
  String title;
  String imgurl;
  String imgurls;
  int sellCount;
  int starCount;
  double amount;
  double markerPrice;
  String content;
  int storeId;
  String address;
  bool hot;
  Store store;
  bool attention;
  Null loginUid;

  FeatureSpot(
      {this.id,
      this.title,
      this.imgurl,
      this.imgurls,
      this.sellCount,
      this.starCount,
      this.amount,
      this.markerPrice,
      this.content,
      this.storeId,
      this.address,
      this.hot,
      this.store,
      this.attention,
      this.loginUid});

  FeatureSpot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imgurl = json['imgurl'];
    imgurls = json['imgurls'];
    sellCount = json['sellCount'];
    starCount = json['starCount'];
    amount = json['amount'];
    markerPrice = json['markerPrice'];
    content = json['content'];
    storeId = json['storeId'];
    address = json['address'];
    hot = json['hot'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
    attention = json['attention'];
    loginUid = json['loginUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['imgurl'] = this.imgurl;
    data['imgurls'] = this.imgurls;
    data['sellCount'] = this.sellCount;
    data['starCount'] = this.starCount;
    data['amount'] = this.amount;
    data['markerPrice'] = this.markerPrice;
    data['content'] = this.content;
    data['storeId'] = this.storeId;
    data['address'] = this.address;
    data['hot'] = this.hot;
    if (this.store != null) {
      data['store'] = this.store.toJson();
    }
    data['attention'] = this.attention;
    data['loginUid'] = this.loginUid;
    return data;
  }
}

class Store {
  int id;
  int uid;
  String storeName;
  String imgurl;
  String province;
  String city;
  String detail;
  String content;
  String createTime;
  double lng;
  double lat;
  double starCount;
  int serviceCount;
  String tel;
  Null attention;
  Null loginUid;
  bool hot;
  double redMin;
  double redMax;

  Store(
      {this.id,
      this.uid,
      this.storeName,
      this.imgurl,
      this.province,
      this.city,
      this.detail,
      this.content,
      this.createTime,
      this.lng,
      this.lat,
      this.starCount,
      this.serviceCount,
      this.tel,
      this.attention,
      this.loginUid,
      this.hot,
      this.redMin,
      this.redMax});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    storeName = json['storeName'];
    imgurl = json['imgurl'];
    province = json['province'];
    city = json['city'];
    detail = json['detail'];
    content = json['content'];
    createTime = json['createTime'];
    lng = json['lng'];
    lat = json['lat'];
    starCount = json['starCount'];
    serviceCount = json['serviceCount'];
    tel = json['tel'];
    attention = json['attention'];
    loginUid = json['loginUid'];
    hot = json['hot'];
    redMin = json['redMin'];
    redMax = json['redMax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['storeName'] = this.storeName;
    data['imgurl'] = this.imgurl;
    data['province'] = this.province;
    data['city'] = this.city;
    data['detail'] = this.detail;
    data['content'] = this.content;
    data['createTime'] = this.createTime;
    data['lng'] = this.lng;
    data['lat'] = this.lat;
    data['starCount'] = this.starCount;
    data['serviceCount'] = this.serviceCount;
    data['tel'] = this.tel;
    data['attention'] = this.attention;
    data['loginUid'] = this.loginUid;
    data['hot'] = this.hot;
    data['redMin'] = this.redMin;
    data['redMax'] = this.redMax;
    return data;
  }
}

class Pi {
  int pageSize;
  int totalPage;
  int currentPage;
  int totalSize;
  Query query;

  Pi(
      {this.pageSize,
      this.totalPage,
      this.currentPage,
      this.totalSize,
      this.query});

  Pi.fromJson(Map<String, dynamic> json) {
    pageSize = json['pageSize'];
    totalPage = json['totalPage'];
    currentPage = json['currentPage'];
    totalSize = json['totalSize'];
    query = json['query'] != null ? new Query.fromJson(json['query']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageSize'] = this.pageSize;
    data['totalPage'] = this.totalPage;
    data['currentPage'] = this.currentPage;
    data['totalSize'] = this.totalSize;
    if (this.query != null) {
      data['query'] = this.query.toJson();
    }
    return data;
  }
}

class Query {
  int loginUid;
  bool hot;

  Query({this.loginUid, this.hot});

  Query.fromJson(Map<String, dynamic> json) {
    loginUid = json['loginUid'];
    hot = json['hot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loginUid'] = this.loginUid;
    data['hot'] = this.hot;
    return data;
  }
}
