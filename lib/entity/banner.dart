class BannerEntity {
  String code;
  String msg;
  List<Data> data;

  BannerEntity({this.code, this.msg, this.data});

  BannerEntity.fromJson(Map<String, dynamic> json) {
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
  String imgurl;
  String url;
  String type;

  Data({this.id, this.storeId, this.imgurl, this.url, this.type});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    imgurl = json['imgurl'];
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['storeId'] = this.storeId;
    data['imgurl'] = this.imgurl;
    data['url'] = this.url;
    data['type'] = this.type;
    return data;
  }
}
