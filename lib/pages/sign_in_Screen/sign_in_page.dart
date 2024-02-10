import 'package:elearningapp/common/widgets/buttons_widgets.dart';
import 'package:elearningapp/common/widgets/text_Widget.dart';
import 'package:elearningapp/pages/sign_in_Screen/sign_in_widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: customAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* 3rd Party Login Options
              thirdPartyLogin(),
              //* more login option text
              Center(
                child: text14Normal(text: "Or use your email account to login"),
              ),
              const SizedBox(
                height: 40,
              ),
              //* Email TextFiled
              appTextField(
                text: "Email",
                icon: "assets/icons/user.png",
                hintText: "Enter your Email",
              ),
              const SizedBox(
                height: 20,
              ),
              //* Password TextField
              appTextField(
                text: "Password",
                icon: "assets/icons/lock.png",
                hintText: "Enter your Password",
                isObscure: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: textUnderLine(text: "Forgot Password?"),
              ),
              const SizedBox(
                height: 100,
              ),
              //* Login Button
              Center(child: appButton()),
              const SizedBox(
                height: 15,
              ),
              //* SignUp Button
              Center(
                  child: appButton(
                text: "SignUp",
              )),
            ],
          ),
        ),
      ),
    );
  }
}
