import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainpro/core/theme/app_colors.dart';

class AppStrings {
  static TextStyle font12grayRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16white600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
  );

}
