import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/product/product_card/product_cart_vertical.dart';
import 'package:ecommerce_app/common/widget/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/enums.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/device/device_utility.dart';
import 'package:ecommerce_app/util/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../common/layout/grid_layout.dart';
import '../../../common/widget/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../common/widget/image_text_widget/vertical_image_text.dart';
import '../../../common/widget/text/section_heading.dart';
import 'home/widgets/home_appbar.dart';
import 'home/widgets/home_categories.dart';
import 'home/widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TPrimaryHeaderWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Appbar
                  THomeAppBar(),

                  SizedBox(height: TSizes.spaceBrusections),

                  //SearchBar
                  TSearchContainer(title: 'Search in Store'),

                  //Categories
                  ThomeCategories(),
                ],
              ),
            ),

            //Body Widget
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  "assets/images/banner1.jpg",
                  "assets/images/banner2.jpg",
                  "assets/images/banner3.jpg",
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TsectionHeading(title: 'Popular Products'),
            ),
            // SizedBox(height: TSizes.spaceBtwItems),
            // Product
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: GridLayout(
                itemCount: 4,
                mainAxisExtent: 288,
                itemBuilder: (BuildContext, int) {
                  return TProductVerticalCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TRoundedImages extends StatelessWidget {
  const TRoundedImages({
    super.key,
    this.width = 450,
    this.height = 156,
    required this.inageUrL,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final String inageUrL;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
        color: backgroundColor,
      ),
      child: ClipRRect(
        borderRadius:
            applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
        child: Image(
          image:
              isNetworkImage
                  ? NetworkImage(inageUrL)
                  : AssetImage(inageUrL) as ImageProvider,
        ),
      ),
    );
  }
}
