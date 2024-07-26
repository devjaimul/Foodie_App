
import 'package:flutter/material.dart';

import 'app_colors.dart';

class HeadingTwo extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? backGroundColor;
  const HeadingTwo({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color, this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? AppColors.blackColors,
          fontSize: fontSize ??  20,
          fontWeight: fontWeight?? FontWeight.w500,
        backgroundColor: backGroundColor,

      ),
    );
  }
}

class HeadingThree extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? backGroundColor;
  const HeadingThree({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color, this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? AppColors.blackColors,
        fontSize: fontSize ??  16,
        fontWeight: fontWeight?? FontWeight.w300,
        backgroundColor: backGroundColor,

      ),
    );
  }
}
