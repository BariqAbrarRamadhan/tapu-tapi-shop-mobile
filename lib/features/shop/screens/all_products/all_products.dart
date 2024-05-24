import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/sortable/sortable_product.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar:
            TAppBar(title: Text('Popular Products'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: TSortableProducts(),
          ),
        ));
  }
}