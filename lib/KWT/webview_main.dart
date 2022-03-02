import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(WebViewClassMain());
}

class WebViewClassMain extends StatefulWidget {
  @override
  _WebViewClassMainState createState() => _WebViewClassMainState();
}

class _WebViewClassMainState extends State<WebViewClassMain> {
  WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: WebView(
                    initialUrl: ' https://apiv1.tirtomulyo.com/ayam/',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    }))));
  }
}
