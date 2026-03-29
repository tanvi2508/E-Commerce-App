import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/texts.dart';

class TTermsCondition extends StatelessWidget {
  const TTermsCondition({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.isAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
              TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.termsUse}',
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
