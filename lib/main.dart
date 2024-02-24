import 'package:elearningapp/common/utils/app_styles.dart';
import 'package:elearningapp/pages/Welcome_Screen/welcome.dart';
import 'package:elearningapp/pages/register_page/signUp_Page.dart';
import 'package:elearningapp/pages/sign_in_Screen/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomePage(),
        "/signIn": (context) => const SignIn(),
        "/register": (context) => const RegisterPage()
      },
      // home: WelcomePage(),
    );
  }
}
