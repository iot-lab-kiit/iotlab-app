import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';
import 'package:iotlabapp/widgets/drawer.dart';
import 'package:iotlabapp/widgets/eventCard.dart';
import 'package:iotlabapp/widgets/ongoingEventCard.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Home"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Hello There,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Signatra',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: Center(
                    child: Text(
                      'We are super excited to have you on board!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.png'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.png'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.png'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.png'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'Ongoing Events',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontFamily: 'Signatra'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'October',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontFamily: 'Signatra'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'By IOT lab'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Past Events',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontFamily: 'Signatra',
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: new CustomDrawer(),
    );
  }
}
