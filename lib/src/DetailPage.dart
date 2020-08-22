import 'package:flutter/material.dart';
import 'package:lihat_kursus/main.dart';

class DetailPage extends StatelessWidget {
  final Course course;

  const DetailPage({Key key, this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Center(
        child: Text('Second Route' + course.title),
      ),
    );
  }
}