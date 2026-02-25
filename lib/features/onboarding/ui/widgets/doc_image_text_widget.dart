import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';

class DocImageTextWidget extends StatelessWidget {
  const DocImageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 491.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SvgPicture.asset(
            'assets/svg/logo.svg',
            width: 375.w,
            height: 491.h,
            colorFilter: ColorFilter.mode(
              AppColors.secondarySBColor,
              BlendMode.srcIn,
            ),
          ),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.1, 0.5],
              ),
            ),
            child: Image.asset('assets/images/Image.png'),
          ),

          Positioned(
            bottom: 30.h,
            left: 0,
            right: 0,
            child: Text(
              textAlign: TextAlign.center,
              'Best Doctor \n Appointment App',
              style: AppStrings.font32BlueBold.copyWith(height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
