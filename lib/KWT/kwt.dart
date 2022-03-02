import 'package:cashier/KWT/homepageKWT.dart';
import 'package:cashier/KWT/webview_main.dart';
import 'package:cashier/KWT/webview_report.dart';
import 'package:flutter/material.dart';

void main() => runApp(KWT());

class KWT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    homepageKWT(),
    WebViewClassMain(),
    WebViewClassReport()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), title: new Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_sharp), title: new Text(' ')),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_sharp), title: Text(' ')),
          ],
        ));
  }
}
