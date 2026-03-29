import 'package:ecommerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/navigation_menus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/texts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBrusections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields),

            //password
            TextFormField(
              decoration: InputDecoration(
                prefix: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffix: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // remember Me & forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(
                  TTexts.rememberMe,
                  style: TextTheme.of(context).labelSmall,
                ),

                Spacer(),

                // Forgot Password
                TextButton(
                  child: Text(TTexts.forgetPassword),
                  onPressed: () {
                    Get.to(ForgotPassword());
                  },
                ),
              ],
            ),

            SizedBox(height: TSizes.spaceBrusections),

            // signin btn
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(NavigationMenus());
                },
                child: Text(TTexts.signIn),
              ),
            ),

            SizedBox(height: TSizes.spaceBrusections),

            //signup btn
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(SignupScreen());
                },
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
