import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/core/widgets/button_style_widget.dart';

class FindDoctorCardWidget extends StatelessWidget {
  const FindDoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return             Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 343.w,
                  height: 167.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book and \nschedule with\nnearest doctor",
                          style: AppStrings.font16white600Weight,
                        ),
                        Gap(20.h),
                        ButtonStyleWidget(
                          text: "Find Nearby",
                          width: 109.w,
                          height: 38.h,
                          color: Colors.white,
                          textStyle: AppStrings.font12grayRegular.copyWith(
                            fontSize: 13.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: -35.h,
                  right: 20.w,
                  bottom: 0.h,
                  child: Image.asset(
                    "assets/images/home/Imagebanner.png",
                    width: 136.w,
                    height: 197.h,
                  ),
                ),
              ],
            );
  }
}