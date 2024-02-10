import 'package:elearningapp/common/utils/app_color.dart';
import 'package:elearningapp/common/widgets/app_shadow.dart';
import 'package:elearningapp/common/widgets/text_Widget.dart';
import 'package:flutter/material.dart';

Widget appButton({
  String text = "Login",
  Color color = AppColors.primaryBackground,
}) {
  return GestureDetector(
    child: Container(
      width: 325,
      height: 50,
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(
          text: text,
          color: color,
        ),
      ),
    ),
  );
}
