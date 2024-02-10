// ignore_for_file: must_be_immutable

import 'package:dots_indicator/dots_indicator.dart';
import 'package:elearningapp/pages/Welcome_Screen/notifier/welcome_notifier.dart';
import 'package:elearningapp/pages/Welcome_Screen/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final indexProvider = StateProvider((ref) => 0);

class WelcomePage extends ConsumerWidget {
  WelcomePage({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              //* Showing our three pages
              PageView(
                controller: pageController,
                onPageChanged: (value) {
                  ref.read(indexDotProvider.notifier).changeIndex(value);
                },
                children: [
                  appOnboardingScreen(
                    pageController,
                    context,
                    imagePath: "assets/images/reading.png",
                    title: "First see Learning",
                    subTitle:
                        "Forget about paper all knowledge in one learning",
                    index: 1,
                  ),
                  appOnboardingScreen(
                    pageController,
                    context,
                    imagePath: "assets/images/man.png",
                    title: "Connect With Everyone",
                    index: 2,
                    subTitle:
                        "Always keep in touch with your tutor and friends. Lets get connected",
                  ),
                  appOnboardingScreen(
                    pageController,
                    context,
                    imagePath: "assets/images/boy.png",
                    title: "Always Facinated Learning",
                    index: 3,
                    subTitle:
                        "Anywhre , anytime. The time is at your discreation. So study whenever wherever",
                    buttonTitle: "Get Started",
                  ),
                ],
              ),
              //* For showing dots
              Positioned(
                bottom: 50,
                child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18, 8),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
