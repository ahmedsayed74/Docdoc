import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svg/logo.svg',
          width: 38.02.w,
          height: 38.02.h,
          color: AppColors.primaryColor,
        ),
        Gap(5.h),
        Image.asset('assets/logo/Docdoc.png', width: 95.57.w, height: 18.99.h),
      ],
    );
  }
}
