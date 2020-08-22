import 'dart:core';

import 'package:flutter/material.dart';
import 'src/DetailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lihat Kursus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class Course {
  final int id;
  final String title;
  final String link;
  final int votes;
  Course({this.id, this.title, this.link, this.votes});
}

class MyHomePage extends StatelessWidget {
  final List<Course> courses = [
    Course(
      id: 1,
      title: "Kelas Android Dasar",
      link: "www.youtube.com",
      votes: 5,
    ),
    Course(
      id: 2,
      title: "Kelas Android Pemula",
      link: "www.youtube.com",
      votes: 5,
    ),
    Course(
      id: 3,
      title: "Kelas Android Ahli",
      link: "www.youtube.com",
      votes: 5,
    ),
    Course(
      id: 4,
      title: "Kelas Front-End Web Dev",
      link: "www.youtube.com",
      votes: 5,
    ),
    Course(
      id: 5,
      title: "Kelas Back-end Golang",
      link: "www.youtube.com",
      votes: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Halaman Utama"),
        ),
        body: ListView.builder(
            itemCount: courses.length,
            itemBuilder: (context, index){
              return Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [ListTile(
                      leading: Icon(Icons.book),
                      title: Text(courses[index].title),
                    ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('DETAIL'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPage(course: courses[index])));},
                          ),
                          FlatButton.icon(
                            icon: Icon(Icons.thumb_up),
                            label: Text("LIKE"),
                            color: Colors.red[400],
                            onPressed: () {/* ... */},
                          ),
                        ],
                      )],
                  ),
                ),
              );
            })
    );
  }
}