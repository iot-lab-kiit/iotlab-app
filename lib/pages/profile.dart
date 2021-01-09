import 'package:flutter/material.dart';
import 'package:iotlabapp/common/ui_constants.dart';
import 'package:iotlabapp/pages/ToDo.dart';
import 'package:iotlabapp/pages/editProfile.dart';
import 'package:iotlabapp/widgets/drawer.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Profile",
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
        drawer: CustomDrawer(),
        body: Container(
          child: ListView(
            children: [
              profileDetails(context),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello Ayushi,",
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()),
                        );
                      },
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      minWidth: UIConstants.fitToWidth(100, context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        side: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ],
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
                    ],
                  ),
                ),
              ),
              new Container(
                height: UIConstants.fitToHeight(500, context),
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    new Tasks(),
                    new Messages(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2 unread messages',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.message,
                color: Colors.black,
                size: 30.0,
              )
            ],
          ),
        ),
        SizedBox(
          height: UIConstants.fitToHeight(10, context),
        ),
        CustomMessageTile(
            message: "Clean the mess",
            name: "Monica Geller",
            time: "11:30 am",
            imageurl:
                "https://w7.pngwing.com/pngs/446/593/png-transparent-girl-wearing-eyeglasses-art-cartoon-drawing-illustration-cartoon-girl-cartoon-character-child-face.png"),
        CustomMessageTile(
            message: "I'm so scared of",
            name: "Chandler Bing",
            time: "10:30 am",
            imageurl:
                "https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg"),
        CustomMessageTile(
            message: "Clean the mess",
            name: "Monica Geller",
            time: "11:30 am",
            imageurl:
                "https://w7.pngwing.com/pngs/446/593/png-transparent-girl-wearing-eyeglasses-art-cartoon-drawing-illustration-cartoon-girl-cartoon-character-child-face.png"),
        CustomMessageTile(
            message: "I'm so scared of",
            name: "Chandler Bing",
            time: "10:30 am",
            imageurl:
                "https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg"),
        CustomMessageTile(
            message: "Clean the mess",
            name: "Monica Geller",
            time: "11:30 am",
            imageurl:
                "https://w7.pngwing.com/pngs/446/593/png-transparent-girl-wearing-eyeglasses-art-cartoon-drawing-illustration-cartoon-girl-cartoon-character-child-face.png"),
      ],
    )));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TasksScreen()));
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
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
              child: MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Another List',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30.0,
                    )
                  ],
                ),
                minWidth: UIConstants.fitToWidth(100, context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  side: BorderSide(
                    color: Colors.white,
                  ),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomMessageTile extends StatefulWidget {
  final String name;
  final String message;
  final String time;
  final String imageurl;

  CustomMessageTile(
      {@required this.message,
      @required this.name,
      @required this.time,
      @required this.imageurl});

  @override
  _CustomMessageTileState createState() => _CustomMessageTileState();
}

class _CustomMessageTileState extends State<CustomMessageTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
          child: Container(
            height: UIConstants.fitToHeight(50, context),
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage("${widget.imageurl}"),
                  ),
                ),
                SizedBox(
                  width: UIConstants.fitToWidth(7.0, context),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        '${widget.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: UIConstants.fitToHeight(5, context),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        '${widget.message}',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: UIConstants.fitToWidth(100, context),
                ),
                Text(
                  '${widget.time}',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
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
            height: UIConstants.fitToHeight(80, context),
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
                  width: UIConstants.fitToWidth(40, context),
                  height: UIConstants.fitToHeight(40, context),
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
            width: UIConstants.fitToWidth(10, context),
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
          ),
        ],
      ),
    ),
  );
}
