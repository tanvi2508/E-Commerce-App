import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../util/constants/colors.dart';

class TAppbarCountWidget extends StatelessWidget {
  const TAppbarCountWidget({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            onPressed;
          },
          icon: Icon(Iconsax.shop, color: iconColor),
        ),

        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: TColors.black,
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.apply(color: TColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
