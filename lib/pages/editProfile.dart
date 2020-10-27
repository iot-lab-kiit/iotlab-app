import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({Key key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: header(context, titleText: "Edit Profile"),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Change profile picture',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            minWidth: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              side: BorderSide(
                color: Colors.black,
              ),
            ),
            color: Colors.white,
          ),
          SizedBox(height: 30),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          ListTile(
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Rohan Roy Chowdhury",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Position',
                  style: TextStyle(fontSize: 18),
                ),
              )),
          ListTile(
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Flutter Developer",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Email ID',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          ListTile(
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "rohanroy2309@gmail.com",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.arrow_forward),
            title: const Text('Change Password'),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            minWidth: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              side: BorderSide(
                color: Colors.black,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
