import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    super.key,
    this.title,
    this.showbackArrow = true,
    this.leadingIcon,
    required this.actions,
    this.ladingOnPressed,
  });

  final Widget? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget> actions;
  final VoidCallback? ladingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showbackArrow
                ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(
                  onPressed: () {
                    ladingOnPressed;
                  },
                  icon: Icon(leadingIcon),
                )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppbarToolbarHeight());
}
