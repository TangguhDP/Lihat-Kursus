class Courses {
  int id;
  String title;
  String category;
  String link;
  int upVotes;
  int downVotes;
  double rating;
  bool isClicked = false;
  String imageUrl = 'assets/images/course.png';
  Courses(
      {this.id,
      this.title,
      this.category,
      this.link,
      this.downVotes,
      this.upVotes,
      this.rating});
}

List<Courses> courseList = [
  Courses(id: 1, title: 'Kelas Android Dasar', category: "Mobile Development"),
  Courses(id: 2, title: 'Kelas Android Pemula', category: "Mobile Development"),
  Courses(id: 3, title: 'Kelas Web Dasar', category: "Web Development"),
  Courses(id: 4, title: 'Kelas Flutter Dasar', category: "Mobile Development"),
  Courses(
      id: 5, title: 'Kelas React Native Dasar', category: "Mobile Development"),
];
