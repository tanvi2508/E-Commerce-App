import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../util/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:
            dark
                ? TColors.black.withOpacity(0.8)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Iconsax.heart, color: Colors.red),
      ),
    );
  }
}
