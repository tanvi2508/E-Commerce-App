import 'package:ecommerce_app/features/shop/screens/home_screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenus extends StatelessWidget {
  const NavigationMenus({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(
      NavigationController(),
    ); //It registers a controller, service, or any class as a dependency so it can be accessed anywhere in the app using Get.find().

    // obx: Obx is a widget that reacts to changes in Rx (reactive) variables.
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: isDark ? TColors.black : TColors.white,
          indicatorColor:
              isDark
                  ? TColors.white.withOpacity(0.1)
                  : TColors.black.withOpacity(0.1),
          onDestinationSelected:
              (index) => {controller.selectedIndex.value = index},
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(color: Colors.pink),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}
