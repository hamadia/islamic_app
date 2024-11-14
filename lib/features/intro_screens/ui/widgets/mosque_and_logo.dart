import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MosqueAndLogo extends StatelessWidget {
  const MosqueAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/Mosque x4.png',
          width: 291.w,
          height: 151.h,
        ),
        Positioned(
          right: 59,
          bottom: 0,
          child: Image.asset(
            'assets/images/Islami.png',
            width: 166.w,
            height: 80.h,
          ),
        ),
      ],
    );
  }
}
