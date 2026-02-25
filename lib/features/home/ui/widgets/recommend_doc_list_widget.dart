import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_strings.dart';

class RecommendDocListWidget extends StatelessWidget {
  const RecommendDocListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110.w,
          height: 110.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: const DecorationImage(
              image: AssetImage("assets/images/home/doc1.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Gap(15.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr. Sarah Johnson",
              style: AppStrings.font24Black700Weight.copyWith(fontSize: 16.sp),
            ),
            Gap(10.h),
            Text.rich(
              TextSpan(
                style: AppStrings.font12grayRegular.copyWith(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(text: "General | "),
                  TextSpan(text: "RSUD Gatot Subroto"),
                ],
              ),
            ),
            Gap(15.h),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 16.r),
                Gap(5.w),
                Text(
                  "4.9 (200 Reviews)",
                  style: AppStrings.font12grayRegular.copyWith(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
