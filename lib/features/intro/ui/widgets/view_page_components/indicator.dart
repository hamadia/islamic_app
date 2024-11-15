import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/colors.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.w,
      height: 7.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.r),
        color: ColorsApp.mainGold,
      ),
    );
  }
}

class UnActiveIndicator extends StatelessWidget {
  const UnActiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 9.w,
      height: 9.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorsApp.gray,
      ),
    );
  }
}
