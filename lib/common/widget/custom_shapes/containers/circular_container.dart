import 'package:flutter/cupertino.dart';

import '../../../../util/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.backgroundColor = TColors.white,
    this.child,
    this.padding = 2,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final Color backgroundColor;
  final Widget? child;
  final double? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
