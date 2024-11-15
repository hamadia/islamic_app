import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/styles.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Intro4 x4.png',
          width: 305.w,
          height: 425.h,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Bearish',
          style: TextStyles.font24Gold700Wight,
        ),
        SizedBox(
          height: 26.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w, right: 46.w),
          child: Text(
            'Praise the name of your Lord, the Most High',
            style: TextStyles.font20Gold700Wight,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
