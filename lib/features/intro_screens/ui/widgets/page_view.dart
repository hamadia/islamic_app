import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_page_components/indicator.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_page_components/view_page_navigateor.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_pages_widget/page_five.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_pages_widget/page_four.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_pages_widget/page_one.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_pages_widget/page_three.dart';
import 'package:islamic_app/features/intro_screens/ui/widgets/view_pages_widget/page_two.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController pageController = PageController(initialPage: 0);
  int activePage = 0;

  final List<Widget> pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
    const PageFive(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          onPageChanged: (int page) {
            setState(() {
              activePage = page;
            });
          },
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return pages[index % pages.length];
          },
        ),
        Positioned(
          bottom: 0.h,
          left: 0.w,
          right: 0.w,
          height: 33.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 25.w,
              ),
              ViewPageNavigator(
                visible: activePage > 0,
                text: 'Back',
                onTap: () {
                  pageController.animateToPage(
                    activePage - 1,
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              ),
              SizedBox(
                width: 60.w,
              ),
              Row(
                children: List<Widget>.generate(
                  pages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: activePage == index
                        ? const ActiveIndicator()
                        : const UnActiveIndicator(),
                  ),
                ),
              ),
              SizedBox(
                width: 60.w,
              ),
              ViewPageNavigator(
                visible: activePage < pages.length - 1,
                text: 'Next',
                onTap: () {
                  pageController.animateToPage(
                    activePage + 1,
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              ),
              ViewPageNavigator(
                visible: activePage == pages.length - 1,
                text: 'Finish',
                onTap: () {},
              ),
              SizedBox(
                width: 25.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
