import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/images/rounded_image.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/product_card/product_card_horizontal.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sport'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TRoundedImage(
                    width: double.infinity,
                    imageUrl: TImages.promoBanner3,
                    applyImageRadius: true),
                const SizedBox(height: TSizes.spaceBtwSections),
                Column(
                  children: [
                    TSectionHeading(
                      title: 'Sport',
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    SizedBox(
                        height: 120,
                        child: ListView.separated(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: TSizes.spaceBtwItems),
                          itemBuilder: (context, index) =>
                              const TProductCardHorizontal(),
                        ))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
