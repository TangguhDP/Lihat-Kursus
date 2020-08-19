import 'dart:core';

import 'package:flutter/material.dart';

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

class Courses {
  int id;
  String title;
  String link;
  int votes;
  Courses(this.id, this.title, this.link, this.votes);
}

class MyHomePage extends StatelessWidget {
  List coursesList = [
    Courses(1, 'Kelas Android Dasar', 'www.youtube.com', 5),
    Courses(2, 'Kelas Android Pemula', 'www.youtube.com', 2),
    Courses(3, 'Kelas Android Ahli', 'www.youtube.com', 3),
    Courses(4, 'Kelas Front-End Web Dev', 'www.youtube.com', 6),
    Courses(5, 'Kelas Back-end Golang', 'www.youtube.com', 7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Halaman Utama"),
      ),
      body: ListView.builder(
        itemCount: coursesList.length,
          itemBuilder: (context, index){
        return Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [ListTile(
                leading: Icon(Icons.book),
                title: Text(coursesList[index].title),
              ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('DETAIL'),
                      onPressed: () {/* ... */},
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
