import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/themeing/styles.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Intro2 x4.png',
          width: 371.w,
          height: 356.h,
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          'Welcom To Islami',
          style: TextStyles.font24Gold700Wight,
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w, right: 46.w),
          child: Text(
            'We Are Very Excited To Have You In Our Community',
            style: TextStyles.font20Gold700Wight,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
