import 'package:cloneflut/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:cloneflut/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:cloneflut/features/authentication/screens/onboarding/widgets/onboarding_dotnav.dart';
import 'package:cloneflut/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:cloneflut/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:cloneflut/utils/constants/image.strings.dart';
import 'package:cloneflut/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Swipe Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.OnBoardingTitle1,
                subTitle: TTexts.OnBoardingSubTitle1,
                image: TImages.OnBoardingWelcome,
              ),
              OnBoardingPage(
                title: TTexts.OnBoardingTitle2,
                subTitle: TTexts.OnboardingSubTitle2,
                image: TImages.OnBoardingStart,
              ),
            ],
          ),

          //Skip button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          //Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
