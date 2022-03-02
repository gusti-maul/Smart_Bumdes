import 'package:flutter/material.dart';

class homepageKWT extends StatefulWidget {
  const homepageKWT({Key key}) : super(key: key);

  @override
  _homepageKWTState createState() => _homepageKWTState();
}

class _homepageKWTState extends State<homepageKWT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: new Text("INI HOMEPAGE",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Pacifico', fontSize: 24)),
      elevation: 0,
    ));
  }
}
