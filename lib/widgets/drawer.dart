import 'package:flutter/material.dart';
import 'package:iotlabapp/pages/profile.dart';
import 'package:iotlabapp/pages/home.dart';
import 'package:iotlabapp/pages/workPage.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
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
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text('RR'),
                      ),
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            ),
          ),
          ListTile(
              title: Text(
                'Work',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorkPage()),
                    ),
                  }),
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
    );
  }
}
