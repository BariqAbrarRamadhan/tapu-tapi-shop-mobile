import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:tapu_tapi_shop/features/shop/screens/all_products/all_products.dart';
import 'package:tapu_tapi_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tapu_tapi_shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tapu_tapi_shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        THomeCatgories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  TSectionHeading(title: 'Popular Product', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections)
          ],
        ),
      ),
    );
  }
}
