import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/image_text_widget/vertical_image_text.dart';
import '../../../../../common/widget/text/section_heading.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';

class ThomeCategories extends StatelessWidget {
  const ThomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Heading
          TsectionHeading(title: 'Popular Categories', textColor: Colors.white),
          SizedBox(height: TSizes.spaceBrusections),

          //Categories
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TVerticalImageText(
                  image: 'assets/icons/categories/clean_clothes.png',
                  title: 'Cloth',
                  textColor: TColors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
