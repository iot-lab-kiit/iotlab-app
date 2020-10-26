import 'package:flutter/material.dart';

onGoingEventCard(context, {String cardTitle, String imgName}) {
  return Padding(
    padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 5),
    child: Container(
      height: 250,
      child: Card(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/$imgName',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                child: Text(
                  cardTitle,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Signatra'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    ),
  );
}
