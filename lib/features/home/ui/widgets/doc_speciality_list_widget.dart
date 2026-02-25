import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/features/home/data/model/doc_speciality_model.dart';

class DocSpecialityListWidget extends StatelessWidget {
  const DocSpecialityListWidget({super.key});

  static List<DocSpecialityModel> docSpecialityList = [
    DocSpecialityModel(
      id: 1,
      name: "General",
      image: "assets/images/category/general.png",
    ),
    DocSpecialityModel(
      id: 2,
      name: "Neurologic",
      image: "assets/images/category/neurologic.png",
    ),
    DocSpecialityModel(
      id: 3,
      name: "Pediatric",
      image: "assets/images/category/pediatric.png",
    ),
    DocSpecialityModel(
      id: 4,
      name: "Radiology",
      image: "assets/images/category/radiology.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: docSpecialityList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20, left: 10).r,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: AppColors.secondarySBColor,
                  child: Center(
                    child: Image.asset(
                      docSpecialityList[index].image,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
                Gap(15.h),
                Text(
                  docSpecialityList[index].name,
                  style: AppStrings.font24Black700Weight.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
