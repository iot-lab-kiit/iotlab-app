import 'package:flutter/material.dart';

onGoingEventCard(context, {String cardTitle, String imgName}) {
  return Padding(
    padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 5),
    child: Container(
      height: 150,
      width: 340,
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
  );
}

// Stack(
//           children: <Widget>[
//             Image.asset(
//               'assets/images/$imgName',
//               fit: BoxFit.cover,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 10, top: 8),
//               child: Container(
//                 child: Text(
//                   cardTitle,
//                   style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontFamily: 'Signatra'),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//           ],
//         ),
