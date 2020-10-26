import 'package:flutter/material.dart';
import 'package:iotlabapp/pages/descriptionPage.dart';

onGoingEventCard(context, {String cardTitle, String imgName}) {
  return Padding(
    padding: EdgeInsets.only(top: 60, left: 10, right: 15, bottom: 0),
    child: Container(
      height: 150,
      width: 340,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DescriptionPage()),
        ),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/$imgName'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Text(
                cardTitle,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Signatra'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    ),
  );
}
