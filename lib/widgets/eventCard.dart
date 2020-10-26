import 'package:flutter/material.dart';
import 'dart:math';

eventCard(context, {String cardTitle, String cardBody, String eventOwner}) {
  var arr = [
    Colors.lightGreenAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.amber[200],
    Colors.lightBlueAccent
  ];
  Random random = new Random();
  return Padding(
    padding: const EdgeInsets.only(top: 40, bottom: 10, left: 15, right: 15),
    child: Card(
      color: arr[random.nextInt(5)],
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              cardTitle,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(cardBody),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(eventOwner),
          ),
        ],
      ),
    ),
  );
}
