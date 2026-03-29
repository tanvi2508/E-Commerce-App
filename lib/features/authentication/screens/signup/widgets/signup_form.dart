import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/terms&Condition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../../common/widget/widget_login_signup/form_divider.dart';
import '../../../../../common/widget/widget_login_signup/social_btns.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/texts.dart';

class TFormSignup extends StatelessWidget {
  const TFormSignup({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.LastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),

          //username
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          //email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields),

          //password
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          SizedBox(height: TSizes.spaceBrusections),

          //terms and condition
          TTermsCondition(isDark: isDark),

          SizedBox(height: TSizes.spaceBrusections),
          //signup btn
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(VerifyEmail());
              },
              child: Text(TTexts.createAccount),
            ),
          ),

          SizedBox(height: TSizes.spaceBrusections),
          // divider
          TFormDivider(dividerText: TTexts.orSignupWith.capitalize!),

          SizedBox(height: TSizes.spaceBrusections),
          //social links
          socialBtns(),
        ],
      ),
    );
  }
}
