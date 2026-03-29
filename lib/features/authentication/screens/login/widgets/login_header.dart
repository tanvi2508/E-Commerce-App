import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/texts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/logo/online-shop.png"),
        Text(TTexts.loginTitle, style: TextTheme.of(context).headlineMedium),
        Text(TTexts.loginSubTitle, style: TextTheme.of(context).bodySmall),
      ],
    );
  }
}
