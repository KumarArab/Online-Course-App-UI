class Course {
  String courseName,
      courseAuthor,
      courseImage,
      authorImage,
      courseTag,
      courseDetails,
      noOfLectures,
      language;

  Course({
    this.courseName,
    this.courseAuthor,
    this.courseImage,
    this.authorImage,
    this.courseTag,
    this.courseDetails,
    this.language,
    this.noOfLectures,
  });
}

List<Course> courseList = [
  Course(
      courseName: "Algorithms and Data Structures",
      courseAuthor: "Michael Douglas",
      authorImage: "assets/images/speaker1.jpg",
      courseTag: "Data Structures",
      courseImage: "assets/images/course1.png",
      courseDetails:
          "lorem is tristique and non proident in hendrerit in lorem is tristique and non proident in hendrerit in lorem is tristique and non proident in hendrerit in",
      noOfLectures: "20(6 hours 30 minutes)",
      language: "English,Spanish"),
  Course(
      courseName: "Fun with Flutter BootCamp",
      courseAuthor: "Kenzie Madison",
      courseTag: "Flutter",
      authorImage: "assets/images/speaker2.png",
      courseImage: "assets/images/course2.png",
      courseDetails:
          "lorem is tristique and non proident in hendrerit in lorem is tristique and non proident in hendrerit in lorem is tristique and non proident in hendrerit in",
      noOfLectures: "14(2 hours 14 minutes)",
      language: "English,French"),
];
