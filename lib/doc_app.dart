import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainpro/core/routing/app_router.dart';
import 'package:mainpro/core/routing/routs.dart';
import 'package:mainpro/core/theme/app_colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: AppColors.backgroundColor,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: Routs.onboardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
