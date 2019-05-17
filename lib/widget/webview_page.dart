import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'base_appbar.dart';

class WebViewPage extends StatelessWidget {
  String url;

//  WebViewPage(this.url);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: 'https://mp.weixin.qq.com/s/QQkrNgeJooYQWjAKSnwaaw',
        appBar: BaseAppbar(context, 'WebView')
        );
  }
}
