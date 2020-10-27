import 'package:flutter/material.dart';
import 'package:iotlabapp/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context, titleText: "Home"),
        body: Container(
          child: ListView(
            children: [
              profileDetails(context),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: Text(
                  "Hello Ayushi!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Card(
                  child: new TabBar(
                    labelColor: Colors.black,
                    controller: _controller,
                    tabs: [
                      new Tab(
                        text: 'Tasks',
                      ),
                      new Tab(
                        text: 'Messages',
                      ),
                      new Tab(
                        text: 'Edit Profile',
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                height: 500.0,
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    new Tasks(),
                    new Container(
                    ),
                    new Container(

                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomTaskTile(
                colour: Color(0xff23395d),
                tasktitle: "Todo",
                func: () {
                  print("Todo pressed!");
                },
                tag: "todo"),
            CustomTaskTile(
                colour: Color(0xff723157),
                tasktitle: "Doing",
                func: () {
                  print("Doing pressed!");
                },
                tag: "doing"),
            CustomTaskTile(
                colour: Color(0xffecbcb4),
                tasktitle: "Done",
                func: () {
                  print("Done pressed!");
                },
                tag: "done"),
          ],
        ),
      ),
    );
  }
}

class CustomTaskTile extends StatefulWidget {
  final String tasktitle;
  final Color colour;
  final Function func;
  final String tag;

  CustomTaskTile(
      {@required this.colour,
      @required this.tasktitle,
      @required this.func,
      @required this.tag});

  @override
  _CustomTaskTileState createState() => _CustomTaskTileState();
}

class _CustomTaskTileState extends State<CustomTaskTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: widget.colour,
            ),
            child: Center(
                child: Text(
              widget.tasktitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: FloatingActionButton(
                    heroTag: widget.tag,
                    backgroundColor: Colors.white70,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: widget.func,
                  ),
                ),
              ]),
        )
      ],
    );
  }
}

profileDetails(context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://w7.pngwing.com/pngs/446/593/png-transparent-girl-wearing-eyeglasses-art-cartoon-drawing-illustration-cartoon-girl-cartoon-character-child-face.png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "Ayushi Das",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Flutter Dev"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("IOT Lab,KIIT",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
