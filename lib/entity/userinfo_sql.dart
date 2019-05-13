class UserSql {
  int id;
  String nickname;
  String imgurl;
  double amount;
  double score;
  String requestCode;

  UserSql(this.id, this.nickname, this.imgurl,this.amount,this.score,this.requestCode);

  UserSql.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nickname = json['nickname'];
    imgurl = json['imgurl'];
    amount = json['amount'];
    score = json['score'];
    requestCode = json['requestCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nickname'] = this.nickname;
    data['imgurl'] = this.imgurl;
    data['amount'] = this.amount;
    data['score'] = this.score;
    data['requestCode'] = this.requestCode;
    return data;
  }
}
