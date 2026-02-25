import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ButtonStyleWidget extends StatelessWidget {
  const ButtonStyleWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height, required this.color, required this.textStyle,
  });
  final String text;
  final double width;
  final double height;
  final Color color;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(child: Text(text, style: textStyle)),
    );
  }
}
