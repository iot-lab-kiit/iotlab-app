import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iotlabapp/common/ui_constants.dart';
import 'package:iotlabapp/pages/home.dart';
import 'package:iotlabapp/pages/loginPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigate);
  }

  void navigate() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: UIConstants.fitToHeight(200, context),
          width: UIConstants.fitToWidth(200, context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(UIConstants.splashScreenLogo),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
