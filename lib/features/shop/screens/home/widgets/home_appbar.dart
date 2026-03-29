import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/appbar/app_bar.dart';
import '../../../../../common/product/cart/cart_menu_icon.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/texts.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.apply(color: TColors.white),
          ),
        ],
      ),
      showbackArrow: false,
      actions: [TAppbarCountWidget(onPressed: () {}, iconColor: TColors.white)],
      ladingOnPressed: () {},
    );
  }
}
