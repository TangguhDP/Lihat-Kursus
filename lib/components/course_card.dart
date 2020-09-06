import 'package:flutter/material.dart';

import '../constants.dart';

class CourseCard extends StatelessWidget {
  //TODO: add variable rating and votes below this line
  final Function onTap;
  final String courseUrl, courseCategory, courseTitle;

  CourseCard(
      {this.onTap, this.courseCategory, this.courseTitle, this.courseUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(4),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                //TODO: for backend don't forget to change to image url not image.asset
                courseUrl,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      courseTitle,
                      style: kTextStyleTitleCard,
                    ),
                    Text(
                      courseCategory,
                      style: kTextStyleCategoryCard,
                    ),
                    Row(
                      children: [
                        //TODO: add rating and votes widget below this line
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
