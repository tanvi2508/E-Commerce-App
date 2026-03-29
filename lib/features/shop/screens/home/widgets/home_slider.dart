import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widget/custom_shapes/containers/circular_container.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../home_screen.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controllers = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items:
              banners
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TRoundedImages(inageUrL: e),
                    ),
                  )
                  .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controllers.updatePageIndicator(index);
            },
          ),
        ),

        SizedBox(height: TSizes.defaultSpace),

        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TCircularContainer(
                    width: 20,
                    height: 5,
                    margin: EdgeInsets.only(right: 10, left: 10),
                    backgroundColor:
                        controllers.carouselCurrentIndex.value == i
                            ? TColors.primary
                            : TColors.grey,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
