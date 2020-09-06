import 'package:flutter/material.dart';
import 'package:lihat_kursus/animation/fadeanimation.dart';
import 'package:lihat_kursus/components/course_card.dart';
import 'package:lihat_kursus/constants.dart';
import 'package:lihat_kursus/model/courses.dart';

//TODO: code below this line is reference for upvote feature.
//class HomeScreen extends StatefulWidget {
//  static String id = "home_screen";
//
//  @override
//  _HomeScreenState createState() => _HomeScreenState();
//}
//
//class _HomeScreenState extends State<HomeScreen> {
//  List coursesList = [
//    Courses(1, 'Kelas Android Dasar', 'www.youtube.com', 5),
//    Courses(2, 'Kelas Android Pemula', 'www.youtube.com', 2),
//    Courses(3, 'Kelas Android Ahli', 'www.youtube.com', 3),
//    Courses(4, 'Kelas Front-End Web Dev', 'www.youtube.com', 6),
//    Courses(5, 'Kelas Back-end Golang', 'www.youtube.com', 7),
//  ];
//  static const nonActiveColor = Colors.white;
//  static const activeColor = Colors.blue;
//  // bool isClicked = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return FadeAnimation(
//      delay: 0.2,
//      child: Scaffold(
//        appBar: AppBar(
//          title: new Text("Halaman Utama"),
//        ),
//        body: new Container(
//          child: ListView(
//            children: coursesList.map((course) {
//              return Center(
//                child: Card(
//                  child: Column(
//                    mainAxisSize: MainAxisSize.min,
//                    children: [
//                      ListTile(
//                        leading: Icon(Icons.book),
//                        title: Text(course.title),
//                      ),
//                      ButtonBar(
//                        children: <Widget>[
//                          FlatButton(
//                            child: const Text('DETAIL'),
//                            onPressed: () {/* ... */},
//                          ),
//                          FlatButton.icon(
//                            icon: Icon(
//                              Icons.thumb_up,
//                              color: course.isClicked
//                                  ? activeColor
//                                  : nonActiveColor,
//                            ),
//                            label: Text(
//                              'LIKE ' + course.votes.toString(),
//                              style: TextStyle(
//                                  color: course.isClicked == true
//                                      ? activeColor
//                                      : nonActiveColor),
//                            ),
//                            color: Colors.red[400],
//                            onPressed: () {
//                              setState(() {
//                                if (course.isClicked == false) {
//                                  course.isClicked = true;
//                                  course.votes++;
//                                } else {
//                                  course.isClicked = false;
//                                  course.votes--;
//                                }
//                              });
//                            },
//                          ),
//                        ],
//                      )
//                    ],
//                  ),
//                ),
//              );
//            }).toList(),
//          ),
//        ),
//      ),
//    );
//  }
//}

class HomeScreen extends StatefulWidget {
  static String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadeAnimation(
              delay: 0.5,
              child: Container(
                height: height * 0.1,
                color: kPrimaryColour,
                padding: EdgeInsets.only(left: 40),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Trending Course",
                    style: kTextStyleAppbar,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FadeAnimation(
                delay: 0.8,
                child: Container(
                  child: ListView.builder(
                      itemCount: courseList.length,
                      itemBuilder: (context, index) {
                        return CourseCard(
                          onTap: () {
                            //TODO: add navigation to detail page
                          },
                          courseCategory: courseList[index].category,
                          courseTitle: courseList[index].title,
                          courseUrl: courseList[index].imageUrl,
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
        //TODO: add bottom navigation bar
      ),
    );
  }
}
