import 'package:iotlabapp/pages/descriptionPage.dart';
import 'package:flutter/material.dart';
import 'package:iotlabapp/pages/editProfile.dart';
import 'package:iotlabapp/pages/home.dart';

void main() {
  runApp(LabApp());
}

class LabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfilePage(),
    );
  }
}

//Navigator.of(context).push(_createRoute());

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DescriptionPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
