class InformationEntity {
  String code;
  String msg;
  List<Information> data;
  Pi pi;

  InformationEntity({this.code, this.msg, this.data, this.pi});

  InformationEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<Information>();
      json['data'].forEach((v) {
        data.add(new Information.fromJson(v));
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

class Information {
  int id;
  String title;
  String content;
  String createTime;
  String imgurl;
  int type;

  Information(
      {this.id,
        this.title,
        this.content,
        this.createTime,
        this.imgurl,
        this.type});

  Information.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createTime = json['createTime'];
    imgurl = json['imgurl'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['content'] = this.content;
    data['createTime'] = this.createTime;
    data['imgurl'] = this.imgurl;
    data['type'] = this.type;
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
  int type;

  Query({this.type});

  Query.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}
