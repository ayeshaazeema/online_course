import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/view/course_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        child: Image.asset('assets/images/profile.png'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(6.0)),
                            child: Image.asset('assets/images/ic_search.png'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(6.0)),
                            child: Image.asset(
                                'assets/images/ic_notification.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'What Class Do You Want\nTo Study Today?',
                  style: darkBlueTextStyle.copyWith(
                      fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  height: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CourseCard(
                          courseIcon: 'assets/images/icon_design.png',
                          courseType: 'Design',
                          courseTotal: '49 Course'),
                      CourseCard(
                          courseIcon: 'assets/images/icon_softskill.png',
                          courseType: 'Soft Skill',
                          courseTotal: '12 Course'),
                      CourseCard(
                          courseIcon: 'assets/images/icon_art.png',
                          courseType: 'Art',
                          courseTotal: '50 Course'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Popular Course',
                  style: darkBlueTextStyle.copyWith(
                      fontSize: 14.0, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
