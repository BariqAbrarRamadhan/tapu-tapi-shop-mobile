import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/brands/brand_card.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/sortable/sortable_product.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: TAppBar(title: Text('Nike')),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TBrandCard(showBorder: true),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSortableProducts()
                ],
              )),
        ));
  }
}
