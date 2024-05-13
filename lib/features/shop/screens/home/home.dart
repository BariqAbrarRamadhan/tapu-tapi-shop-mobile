import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSeacrhContainer(text: 'Search in Store'),
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
