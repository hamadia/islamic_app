import 'package:flutter/material.dart';
import 'package:islamic_app/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/routing/routes.dart';
import 'package:islamic_app/core/theming/colors.dart';

class IslamicApp extends StatelessWidget {
  final AppRouter appRouter;
  const IslamicApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Islamic App',
        theme: ThemeData(
          primaryColor: ColorsApp.mainGold,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.introScreens,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
