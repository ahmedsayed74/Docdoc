import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/features/onboarding/ui/widgets/doc_image_text_widget.dart';
import 'package:mainpro/features/onboarding/ui/widgets/logo_widget.dart';
import 'package:mainpro/features/onboarding/ui/widgets/text_button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LogoWidget
                LogoWidget(),
                Gap(10.h),
                // DocImageTextWidget
                DocImageTextWidget(),
                Gap(5.h),
                // Gray Text And Button Widget
                TextButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
