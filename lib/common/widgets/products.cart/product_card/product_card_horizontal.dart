import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/common/styles/shadows.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tapu_tapi_shop/common/widgets/icons/circular_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/images/rounded_image.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/product_price_text.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/product_title_text.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.softGrey,
        ),
        child: Row(
          children: [
            TRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                      height: 120,
                      width: 120,
                      child: TRoundedImage(
                          imageUrl: TImages.productImage1,
                          applyImageRadius: true)),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),
                  // const Positioned(
                  //     top: 0,
                  //     right: 0,
                  //     child: TCircularIcon(
                  //       icon: Iconsax.heart5,
                  //       color: Colors.red,
                  //     ))
                ],
              ),
            ),
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(
                            title: 'Product Title', smallSize: true),
                        SizedBox(height: TSizes.spaceBtwItems / 2),
                        TBrandTitleWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: TProductPriceText(price: '3,399,000')),
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: TColors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
