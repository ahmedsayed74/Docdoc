import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/features/home/ui/widgets/doc_speciality_list_widget.dart';
import 'package:mainpro/features/home/ui/widgets/find_doctor_card_widget.dart';
import 'package:mainpro/features/home/ui/widgets/recommend_doc_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        toolbarHeight: 70.h,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi, ",
                        style: AppStrings.font24Black700Weight,
                      ),
                      TextSpan(
                        text: "Ahmed",
                        style: AppStrings.font24Black700Weight,
                      ),
                    ],
                  ),
                ),

                Text(
                  "How are you today?",
                  style: AppStrings.font12grayRegular.copyWith(
                    height: 1.9.h,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            CircleAvatar(
              radius: 25.r,
              backgroundColor: AppColors.secondarySBColor,
              child: Center(
                child: Icon(Icons.notifications_none_rounded, weight: 24.w),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0).r,
          child: Column(
            children: [
              Gap(40.h),

              // Find Doctor Card
              const FindDoctorCardWidget(),

              Gap(30.h),

              // Doctor Speciality List
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor Speciality",
                    style: AppStrings.font24Black700Weight.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),

                  Text(
                    "See All",
                    style: AppStrings.font12grayRegular.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),

              Gap(20.h),

              // Doctor Speciality List
              DocSpecialityListWidget(),

              // Recommended Doctors
              Gap(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Doctors",
                    style: AppStrings.font24Black700Weight.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    "See All",
                    style: AppStrings.font12grayRegular.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),

              Gap(20.h),
              // Recommended Doctors List
              const RecommendDocListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
