import 'package:flutter/material.dart';
import 'package:iotlabapp/common/ui_constants.dart';

import 'LoginPage.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.blue[900],
                Colors.blue[700],
                Colors.blue[300],
                Colors.blue[100],
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: UIConstants.fitToHeight(25, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 40.0),
                        ),
                        SizedBox(
                          height: UIConstants.fitToHeight(10, context),
                        ),
                        Text(
                          'Create a new account.',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 10.0, bottom: 8),
                      child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C510BAQE-Nca8RmtJCg/company-logo_200_200/0?e=2159024400&v=beta&t=ECEZiruPd8TsMwsyE4oSionmp-yNDb4BY_LsfzUcxok'),
                          ))),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: UIConstants.fitToHeight(30, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue[100],
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              inputField('Enter Email'),
                              inputField('Enter Password'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: UIConstants.fitToHeight(15, context),
                        ),
                        SizedBox(
                          height: UIConstants.fitToHeight(15, context),
                        ),
                        GestureDetector(
                          onTap: null,
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  Colors.blue[900],
                                  Colors.blue[700],
                                  Colors.blue[300],
                                  Colors.blue[100],
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: UIConstants.fitToHeight(15, context),
                        ),
                        Text(
                          'Already Have an Account?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: UIConstants.fitToHeight(15, context),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  Colors.blue[900],
                                  Colors.blue[700],
                                  Colors.blue[300],
                                  Colors.blue[100],
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container inputField(String text) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
