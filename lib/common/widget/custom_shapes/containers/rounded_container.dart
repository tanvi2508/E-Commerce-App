import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import '../../../../util/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.shosBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.textSecondary,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool shosBorder;
  final Color? borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border:
            shosBorder
                ? Border.all(color: backgroundColor)
                : Border.all(color: backgroundColor),
      ),
      // BoxDecoration
      child: child,
    );
  }
}
