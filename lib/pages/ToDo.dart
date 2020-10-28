import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:iotlabapp/models/taskmodel.dart';
import 'package:iotlabapp/models/todomodel.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool checked = false;

  List<Task> tasks = [];

  void updateTasks(String name) {
    setState(() {
      tasks.add(Task(name: name));
    });
  }

  void removedTask() {
    setState(() {});
  }

  void confirmDialog(BuildContext context) {
    var alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: AddTaskScreen(
          addTaskCallback: updateTasks,
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          confirmDialog(context);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.lightBlue[900],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Todo List",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                '${tasks.length} tasks to be done!',
                style: TextStyle(color: Colors.black26, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TasksList(
                tasks: tasks,
                onDismiss: removedTask,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  taskTitle,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.delete),
                  Checkbox(
                    activeColor: Colors.lightBlueAccent,
                    value: isChecked,
                    onChanged: checkBoxCallback,
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class TasksList extends StatefulWidget {
  TasksList({this.tasks, this.onDismiss});

  Function onDismiss;
  List<Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, int index) {
        return Dismissible(
          key: Key(widget.tasks[index].name),
          background: Container(
            color: Colors.white,
          ),
          child: TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallback: (bool newCheckboxState) {
              setState(() {
                widget.tasks[index].isDone = newCheckboxState;
              });
            },
          ),
          onDismissed: (direction) {
            setState(() {
              widget.tasks.removeAt(index);
              widget.onDismiss();
            });
          },
        );
      },
    );
  }
}
