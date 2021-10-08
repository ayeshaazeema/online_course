import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class CourseCard extends StatelessWidget {
  final String courseIcon;
  final String courseType;
  final String courseTotal;

  const CourseCard(
      {required this.courseIcon,
      required this.courseType,
      required this.courseTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      padding: EdgeInsets.all(12.0),
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            courseIcon,
            width: 42.0,
            height: 42.0,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            courseType,
            style: darkBlueTextStyle.copyWith(
                fontSize: 12.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            courseTotal,
            style: greyTextStyle.copyWith(
                fontSize: 10.0, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
