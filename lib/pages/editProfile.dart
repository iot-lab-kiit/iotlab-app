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
        ],
      ),
    );
  }
}
