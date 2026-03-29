import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pagecontroller = PageController();
  Rx<int> currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pagecontroller.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
