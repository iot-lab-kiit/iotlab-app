import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iotlabapp/common/ui_constants.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.addTaskCallback, this.newTaskTitle});

  final Function addTaskCallback;
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: UIConstants.fitToHeight(8, context),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: UIConstants.fitToHeight(8, context),
              ),
              FlatButton(
                onPressed: () {
                  try {
                    addTaskCallback(newTaskTitle);
                  } catch (e) {
                    print(e);
                  }
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
