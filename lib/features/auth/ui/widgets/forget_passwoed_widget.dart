import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainpro/core/theme/app_strings.dart';

class ForgetPasswoedWidget extends StatelessWidget {
  const ForgetPasswoedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Forgot Password?",
          style: AppStrings.font16white600Weight.copyWith(
            color: Colors.blue,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
