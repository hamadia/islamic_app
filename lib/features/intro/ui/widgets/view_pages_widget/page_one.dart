import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/styles.dart';
import 'package:islamic_app/features/intro/ui/widgets/view_page_components/chose_language.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Intro1.png',
          width: 364.67.w,
          height: 341.h,
        ),
        SizedBox(
          height: 52.h,
        ),
        Text(
          'Chose Language',
          style: TextStyles.font24Gold700Wight,
        ),
        SizedBox(
          height: 45.h,
        ),
        const ChoseLanguage(),
      ],
    );
  }
}
