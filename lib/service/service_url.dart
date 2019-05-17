class ServiceUrl {
  static const String baseUrl = 'https://nian.im/time-cat-api/';
  static const String baseImageUrl = 'http://timecats-yunpan.oss-cn-hangzhou.aliyuncs.com/';

  static const String homeBanner = baseUrl + 'api/StoreBanner/List'; //首页banner
  static const String information = baseUrl + 'api/Information/Page'; //资讯
  static const String featureSpot = baseUrl + 'api/Attractions/Page'; //景点
  static const String login = baseUrl + 'api/WebUser/Login'; //登录
  static const String mealList = baseUrl + 'api/PhotoPackage/List'; //套餐列表
}
