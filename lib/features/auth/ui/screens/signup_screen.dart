import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/core/widgets/button_style_widget.dart';
import 'package:mainpro/features/auth/ui/widgets/account_log_sign_widget.dart';
import 'package:mainpro/features/auth/ui/widgets/custom_text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create Account", style: AppStrings.font32BlueBold),
                  Gap(20.h),
                  Text(
                    textAlign: TextAlign.start,
                    " Sign up now and start exploring all that our\n app has to offer. We're excited to welcome\n you to our community!",
                    style: AppStrings.font12grayRegular.copyWith(
                      height: 1.7,
                      letterSpacing: 1,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(50.h),
                  // Email
                  CustomTextFieldWidget(
                    textInputType: TextInputType.emailAddress,
                    hintText: "Email",
                    controller: emailController,
                  ),
                  Gap(25.h),
                  // Password
                  CustomTextFieldWidget(
                    isPassword: true,
                    textInputType: TextInputType.visiblePassword,
                    hintText: "Password",
                    controller: passwordController,
                  ),

                  Gap(35.h),

                  // Login Button
                  ButtonStyleWidget(
                    text: "Create Account",
                    width: 372.w,
                    height: 52.h, color: AppColors.primaryColor, textStyle: AppStrings.font16white600Weight,
                  ),

                  // Don't have an account? Sign Up
                  Gap(25.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AccountLogSignWidget(
                      text: 'Already have an account? ',
                      signText: 'Sign In',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
