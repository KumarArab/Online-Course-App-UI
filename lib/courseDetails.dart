import 'package:OnlineCourseAppUI/HomePage.dart';
import 'package:OnlineCourseAppUI/coursemodel.dart';
import 'package:OnlineCourseAppUI/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetails extends StatelessWidget {
  final Course course;

  CourseDetails({this.course});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: _height,
          width: _width,
          child: Stack(
            children: [
              Container(
                height: _height * 0.4,
                width: _width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      course.courseImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: _height * 0.7,
                  width: _width,
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Chips(
                            topic: course.courseTag,
                            isSelected: true,
                          ),
                          SizedBox(width: 20),
                          Chips(
                            topic: "Coding",
                            isSelected: true,
                          ),
                          Spacer(),
                        ],
                      ),
                      Text(
                        course.courseName,
                        style: UserStyle,
                      ),
                      Text(
                        course.courseDetails,
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Author",
                        style: TopicStyle,
                      ),
                      Container(
                        height: 80,
                        width: _width,
                        margin: EdgeInsets.only(right: 30),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 30,
                              offset: Offset(5, 20),
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                course.authorImage,
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              course.courseAuthor,
                              style: GoogleFonts.poppins(
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: _width,
                        child: ListView(
                          children: [
                            CourseDescription(
                              title: 'Lectures',
                              subtitle: course.noOfLectures,
                            ),
                            CourseDescription(
                              title: 'Language',
                              subtitle: course.language,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class CourseDescription extends StatelessWidget {
  final String title, subtitle;
  CourseDescription({this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 22,
        ),
      ),
      trailing: Text(
        subtitle,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 22,
        ),
      ),
    );
  }
}
