import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the specific dot slected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current undex & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 1) {
      // Get.to(LoginScreen());
    } else {
      double page = currentPageIndex.value + 1;
      pageController.jumpTo(page);
    }
  }

  //Update current Index & Jump to the last page
  void skipPage() {
    currentPageIndex.value = 1;
    pageController.jumpToPage(1);
  }
}
