import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/brands/brand_showcase.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TBrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                const TBrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSectionHeading(title: 'You Might Like', onPressed: () {}),
                const SizedBox(height: TSizes.spaceBtwItems),
                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
