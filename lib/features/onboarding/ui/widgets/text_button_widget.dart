import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/helpers/extensions.dart';
import 'package:mainpro/core/routing/routs.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/core/widgets/button_style_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: AppStrings.font12grayRegular,
          ),
          Gap(20.h),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routs.loginScreen);
            },
            child: ButtonStyleWidget(text: "GetStarted", width: 311.w, height:52.h, color: AppColors.primaryColor, textStyle: AppStrings.font16white600Weight)),
        ],
      ),
    );
  }
}
