import 'package:flutter/material.dart';
import 'dart:math';

eventCard(context, {String cardTitle, String cardBody, String eventOwner}) {
  var arr = [
    Color(0xff7F2CCB),
    Color(0xff42BFDD),
  ];
  Random random = new Random();
  return Padding(
    padding: const EdgeInsets.only(top: 50, bottom: 10, left: 15, right: 15),
    child: Container(
      height: 80,
      width: 180,
      child: Card(
        color: arr[random.nextInt(2)],
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Text(
                cardBody,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10,
                right: 10,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  eventOwner,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
