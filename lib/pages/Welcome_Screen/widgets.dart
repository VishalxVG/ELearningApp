import 'package:elearningapp/common/widgets/app_shadow.dart';
import 'package:elearningapp/common/widgets/text_Widget.dart';
import 'package:flutter/material.dart';

Widget appOnboardingScreen(PageController pageController, BuildContext context,
    {String imagePath = "assets/images/boy.png",
    String title = "",
    String subTitle = "",
    String buttonTitle = "Next",
    index = "0"}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, pageController, context, buttonTitle),
    ],
  );
}

Widget _nextButton(
  index,
  PageController pageController,
  BuildContext context,
  String buttonTitle,
) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushNamed(context, "/signIn");
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(
          text: buttonTitle,
          color: Colors.white,
        ),
      ),
    ),
  );
}
