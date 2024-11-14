import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/themeing/styles.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Intro5 x4.png',
          width: 215.w,
          height: 407.h,
        ),
        SizedBox(
          height: 17.h,
        ),
        Text(
          'Holy Quran Radio',
          style: TextStyles.font24Gold700Wight,
        ),
        SizedBox(
          height: 26.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w, right: 46.w),
          child: Text(
            'You can listen to the Holy Quran Radio through the application for free and easily',
            style: TextStyles.font20Gold700Wight,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
