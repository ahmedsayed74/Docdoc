import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';
import 'package:mainpro/core/widgets/button_style_widget.dart';
import 'package:mainpro/features/auth/ui/widgets/account_log_sign_widget.dart';
import 'package:mainpro/features/auth/ui/widgets/custom_text_field_widget.dart';
import 'package:mainpro/features/auth/ui/widgets/forget_passwoed_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
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
                  Text("Welcome Back!", style: AppStrings.font32BlueBold),
                  Gap(20.h),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: AppStrings.font12grayRegular.copyWith(
                      height: 1.5,
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

                  Gap(20.h),
                  // Forget Password
                  ForgetPasswoedWidget(),
                  Gap(35.h),

                  // Login Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/RootView');
                    },
                    child: ButtonStyleWidget(
                      text: "Login",
                      width: 372.w,
                      height: 52.h,
                      color: AppColors.primaryColor,
                      textStyle: AppStrings.font16white600Weight,
                    ),
                  ),

                  // Don't have an account? Sign Up
                  Gap(25.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/SignUpScreen');
                    },
                    child: AccountLogSignWidget(
                      text: 'Don\'t have an account? Sign Up ',
                      signText: 'Sign Up',
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
