import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';
import 'package:iotlabapp/widgets/work.dart';

class WorkPage extends StatefulWidget {
  WorkPage({Key key}) : super(key: key);

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context, titleText: "Work"),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Text('Recent Projects',
                  style: TextStyle(color: Color(0xff000000), fontSize: 18)),
            ),
            display1(
              context,
              "Bitscan",
              "A note scanning app",
              Color(0xff000000),
              Colors.black,
              Color(0xffF0E100),
              "Progress",
              "Ongoing",
            ),
            display1(
              context,
              "Beacon",
              "IoT based app",
              Color(0xff000000),
              Colors.black,
              Color(0xff06D6A0),
              "Progress",
              "Started",
            ),
            display1(
              context,
              "Skillsly",
              "Education app",
              Color(0xff000000),
              Colors.black,
              Color(0xff9DD6FF),
              "Progress",
              "On Hold",
            ),
            FloatingActionButton(
              onPressed: null,
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ));
  }
}