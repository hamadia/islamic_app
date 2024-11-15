import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/colors.dart';

class ChoseLanguage extends StatefulWidget {
  const ChoseLanguage({super.key});

  @override
  State<ChoseLanguage> createState() => _ChoseLanguageState();
}

class _ChoseLanguageState extends State<ChoseLanguage> {
  bool isUsSelected = true;
  bool isYeSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.h,
        width: 125.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          border: Border.all(color: ColorsApp.mainGold, width: 2),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isUsSelected = !isUsSelected;
                  isYeSelected = !isUsSelected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: isUsSelected
                      ? BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        )
                      : BorderRadius.circular(10.r),
                  color: isUsSelected ? ColorsApp.mainGold : ColorsApp.black,
                ),
                width: 60.w,
                height: 45.h,
                child: Image.asset(
                  'assets/images/US.png',
                  width: 30.w,
                  height: 30.h,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isYeSelected = !isYeSelected;
                  isUsSelected = !isYeSelected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: isYeSelected
                      ? BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r),
                        )
                      : BorderRadius.circular(10.r),
                  color: isYeSelected ? ColorsApp.mainGold : ColorsApp.black,
                ),
                width: 60.7.w,
                height: 45.h,
                child: Image.asset(
                  'assets/images/YE.png',
                  width: 30.w,
                  height: 30.h,
                ),
              ),
            ),
          ],
        ));
  }
}
