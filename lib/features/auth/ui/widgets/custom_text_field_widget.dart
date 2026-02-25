import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mainpro/core/theme/app_colors.dart';
import 'package:mainpro/core/theme/app_strings.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.textInputType,
    required this.hintText,
    required this.controller,
    this.validator,
    this.textInputAction,
    this.isPassword = false,
  });

  final TextInputType textInputType;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool isPassword;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      obscureText: _obscure,

      textInputAction: widget.textInputAction,
      style: AppStrings.font16white600Weight.copyWith(
        color: Colors.black,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.secondarySBColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        hintText: widget.hintText,
        hintStyle: AppStrings.font16white600Weight.copyWith(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
