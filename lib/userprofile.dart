import 'dart:ui';

import 'package:OnlineCourseAppUI/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              backgroundColor1,
              backgroundColor0,
              backgroundColor0,
              backgroundColor1,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: SafeArea(
            child: Container(
              width: _width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 25,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: _height * 0.12,
                          width: _height * 0.12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: userShadow,
                                offset: Offset(4, 10),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/user.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Arab Kumar",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: _height * 0.1,
                    width: _width,
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.3)),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        "assets/images/medal.svg",
                        width: 40,
                        height: 40,
                      ),
                      title: Text(
                        "Premium Member",
                        style: UserTopicStyle,
                      ),
                      subtitle: Text(
                        "Member since 12 Aug 2019",
                        style: UserSubtitleStyle,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    height: _height * 0.28,
                    width: _width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Participated WorkShop",
                          style: UserTopicStyle,
                        ),
                        SizedBox(height: 10),
                        ProgressBar(),
                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.circleNotch,
                                  color: partColor1,
                                ),
                                title: Text(
                                  "Algorithms",
                                  style: UserSubtitleStyle,
                                ),
                              ),
                              ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.circleNotch,
                                  color: partColor2,
                                ),
                                title: Text(
                                  "Flutter",
                                  style: UserSubtitleStyle,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: _height * 0.32,
                    width: _width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white.withOpacity(0.6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Options",
                          style: UserTopicStyle,
                        ),
                        SizedBox(height: 20),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.fingerprint,
                          ),
                          title: Text(
                            'Privacy',
                            style: UserOptionsStyle,
                          ),
                          trailing: Icon(Icons.navigate_next),
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.shieldAlt,
                          ),
                          title: Text(
                            'Security',
                            style: UserOptionsStyle,
                          ),
                          trailing: Icon(Icons.navigate_next),
                        ),
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.questionCircle),
                          title: Text(
                            'Help',
                            style: UserOptionsStyle,
                          ),
                          trailing: Icon(Icons.navigate_next),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 15,
      width: _width,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: partColor0,
      ),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Container(
          height: 15,
          width: _width,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: partColor1,
          ),
          child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Container(
              height: 15,
              width: _width,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: partColor2,
              ),
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Container(
                  height: 15,
                  width: _width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: partColor3,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
