import 'package:flutter/material.dart';

header(
  context, {
  bool isAppTitle = false,
  String titleText,
}) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.more_horiz,
          color: Colors.black,
          size: 40,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Text(
      isAppTitle ? "GoSocio" : titleText,
      style: TextStyle(
        color: Colors.black,
        fontFamily: isAppTitle ? "Signatra" : "",
        fontSize: isAppTitle ? 50.0 : 22.0,
      ),
      overflow: TextOverflow.ellipsis,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            'assets/images/iot.png',
          ),
        ),
      ),
    ],
    centerTitle: true,
  );
}
