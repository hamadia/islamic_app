import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/theming/colors.dart';
import 'package:islamic_app/features/intro/ui/widgets/mosque_and_logo.dart';
import 'package:islamic_app/features/intro/ui/widgets/page_view.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Center(
            child: Column(
              children: [
                const MosqueAndLogo(),
                SizedBox(
                  height: 50.h,
                ),
                const Expanded(child: PageViewWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
