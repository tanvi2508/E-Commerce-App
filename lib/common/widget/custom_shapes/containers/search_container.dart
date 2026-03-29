import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/device/device_utility.dart';
import '../../../../util/helper/helper_function.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.title,
    this.iconData = Iconsax.search_normal,
    this.showbgColor = true,
    this.showBorderColor = true,
  });

  final String title;
  final IconData? iconData;
  final showbgColor, showBorderColor;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color:
              showbgColor
                  ? isDark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
          border: Border.all(color: TColors.grey),
        ),
        child: Row(
          children: [
            Icon(iconData, color: TColors.darkerGrey),
            SizedBox(width: TSizes.spaceBtwItems),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.apply(color: TColors.darkerGrey),
            ),
          ],
        ),
      ),
    );
  }
}
