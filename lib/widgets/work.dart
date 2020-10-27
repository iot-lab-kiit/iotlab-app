import 'package:flutter/material.dart';

display1(
  BuildContext context,
  String title,
  String subtitle,
  Color t,
  Color s,
  Color color,
  String per,
  String status,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.black,
      elevation: 8,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        width: MediaQuery.of(context).size.width - 40,
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    color: t,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: s,
                  ),
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        per,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        status,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.woolha.com/media/2020/03/flutter-circleavatar-radius.jpg'),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      '+2',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
