import 'package:flutter/material.dart';
import 'package:iotlabapp/common/ui_constants.dart';

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
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Signatra",
            fontSize: 22.0,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/iot.png',
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
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
            minWidth: UIConstants.fitToWidth(100, context),
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
          SizedBox(height: UIConstants.fitToHeight(30, context)),
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
            height: UIConstants.fitToHeight(15, context),
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
            height: UIConstants.fitToHeight(15, context),
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
            height: UIConstants.fitToHeight(10, context),
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
