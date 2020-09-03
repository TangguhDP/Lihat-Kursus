import 'package:flutter/material.dart';
import 'package:lihat_kursus/animation/fadeanimation.dart';
import 'package:lihat_kursus/model/courses.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List coursesList = [
    Courses(1, 'Kelas Android Dasar', 'www.youtube.com', 5),
    Courses(2, 'Kelas Android Pemula', 'www.youtube.com', 2),
    Courses(3, 'Kelas Android Ahli', 'www.youtube.com', 3),
    Courses(4, 'Kelas Front-End Web Dev', 'www.youtube.com', 6),
    Courses(5, 'Kelas Back-end Golang', 'www.youtube.com', 7),
  ];
  static const nonActiveColor = Colors.white;
  static const activeColor = Colors.blue;
  // bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 0.2,
      child: Scaffold(
        appBar: AppBar(
          title: new Text("Halaman Utama"),
        ),
        body: new Container(
          child: ListView(
            children: coursesList.map((course) {
              return Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.book),
                        title: Text(course.title),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('DETAIL'),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton.icon(
                            icon: Icon(
                              Icons.thumb_up,
                              color: course.isClicked
                                  ? activeColor
                                  : nonActiveColor,
                            ),
                            label: Text(
                              'LIKE ' + course.votes.toString(),
                              style: TextStyle(
                                  color: course.isClicked == true
                                      ? activeColor
                                      : nonActiveColor),
                            ),
                            color: Colors.red[400],
                            onPressed: () {
                              setState(() {
                                if (course.isClicked == false) {
                                  course.isClicked = true;
                                  course.votes++;
                                } else {
                                  course.isClicked = false;
                                  course.votes--;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
