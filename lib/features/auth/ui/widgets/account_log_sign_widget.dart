import 'package:flutter/material.dart';
import 'package:mainpro/core/theme/app_strings.dart';

class AccountLogSignWidget extends StatelessWidget {
  const AccountLogSignWidget({super.key, required this.text, required this.signText});
  final String text;
  final String signText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStrings.font12grayRegular),
        Text(
          signText,
          style: AppStrings.font16white600Weight.copyWith(color: Colors.blue),
        ),
      ],
    );
  }
}
