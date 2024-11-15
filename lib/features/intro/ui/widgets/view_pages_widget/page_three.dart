import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/styles.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Intro3 x4.png',
          width: 287.w,
          height: 409.h,
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          'Reading the Quran',
          style: TextStyles.font24Gold700Wight,
        ),
        SizedBox(
          height: 26.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w, right: 46.w),
          child: Text(
            'Read, and your Lord is the Most Generous',
            style: TextStyles.font20Gold700Wight,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
