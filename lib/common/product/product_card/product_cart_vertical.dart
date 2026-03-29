import 'package:ecommerce_app/common/widget/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/features/shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helper/helper_function.dart';
import '../../icon/circular_icon.dart';
import '../../styles/shadows.dart';

class TProductVerticalCard extends StatelessWidget {
  const TProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // III Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
          // BoxDecoration
        ),
        child: Column(
          children: [
            //Thumbnail, wishlist and discount tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              borderColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  TRoundedImages(
                    inageUrL: "assets/images/product2.jpg",
                    applyImageRadius: true,
                  ),

                  //sales tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: 10,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.apply(color: TColors.black),
                      ),
                    ),
                  ),

                  //Fav icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(dark: dark),
                  ),
                ],
              ),
            ),

            // Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Green Nike Air Shoes',
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    // Text
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.xl),
                      const Icon(
                        Iconsax.verify_copy,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ), // Text
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              TSizes.productImageRadius,
                            ),
                          ),
                        ),
                        // BorderRadius.only
                        // BoxDecoration
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: const Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                          // SizedBox
                        ),
                      ),
                    ],
                  ),

                  // Column
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
