// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/themeing/styles.dart';

class ViewPageNavigator extends StatelessWidget {
  final bool visible;
  final String text;
  void Function() onTap;
  ViewPageNavigator({
    super.key,
    required this.visible,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyles.font24Gold700Wight.copyWith(
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
