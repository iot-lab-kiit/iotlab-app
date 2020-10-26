import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';

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
            )
          ],
        ));
  }
}
