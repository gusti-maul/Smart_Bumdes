import 'package:cashier/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/bumdes_logo.png",
                  height: 250.0,
                  width: 250.0,
                ),

                //  Text("Be Smart People \n to Be Good Life",textAlign:TextAlign.center,
                //         style: TextStyle(
                //           color: Colors.blue,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 12.0,
                //         ),
                //       ),
              ],
            ),
            //CircularProgressIndicator(
            //valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            //),
          ],
        ),
      ),
    );
  }
}
