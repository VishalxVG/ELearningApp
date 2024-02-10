import 'package:elearningapp/common/utils/app_color.dart';
import 'package:elearningapp/common/widgets/app_shadow.dart';
import 'package:elearningapp/common/widgets/image_widgets.dart';
import 'package:elearningapp/common/widgets/text_Widget.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.red,
        height: 1,
      ),
    ),
    title: text16Normal(
      text: "Login",
      color: AppColors.primaryText,
    ),
    centerTitle: true,
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(top: 40, right: 80, left: 80, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String imagepath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(imagepath),
    ),
  );
}

Widget appTextField({
  String text = "",
  String icon = "assets/icons/user.png",
  String hintText = "TypeIn your info",
  bool isObscure = false,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 355,
          height: 50,
          decoration: appBoxDecorationTextField(),
          //* Icons + TextField
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: appImage(imagePath: icon),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 280,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.primarySecondaryElementText,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  autocorrect: false,
                  maxLines: 1,
                  onChanged: (value) {},
                  obscureText: isObscure,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
