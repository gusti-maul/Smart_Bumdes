import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(WebViewClassReport());
}

class WebViewClassReport extends StatefulWidget {
  @override
  _WebViewClassReportState createState() => _WebViewClassReportState();
}

class _WebViewClassReportState extends State<WebViewClassReport> {
  WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: WebView(
                    initialUrl: ' https://apiv1.tirtomulyo.com/ayam/report',
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    }))));
  }
}
