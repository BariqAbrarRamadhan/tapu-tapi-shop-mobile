import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/brands/brand_card.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/features/shop/screens/all_brands/brand_products.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(title: Text('Brands'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                      title: 'Brands', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(
                    itemCount: 10,
                    mainAxisExtent: 80,
                    itemBuilder: (context, index) => TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts()),
                    ),
                  ),
                ],
              )),
        ));
  }
}
