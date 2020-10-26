import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';
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
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                        onGoingEventCard(context,
                            cardTitle: 'Hacktober Fest 2020',
                            imgName: 'hacktoberfest.jpg'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Ongoing Events',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontFamily: 'Signatra'),
                            textAlign: TextAlign.center,
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
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                      eventCard(context,
                          cardTitle: 'Azure WorkShop',
                          cardBody: 'Learn and become a cloud architect',
                          eventOwner: 'IOT lab'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Upcoming Events',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
      drawer: new Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'IoT Lab',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          icon: new Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text('RR'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('Rohan Roy Chowdhury',
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('rohanroy2309@gmail.com',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Work',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Services',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Share',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Rate',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              trailing: Text(
                'Login',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}