import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),

            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  TRatingAndShare(),
                  TProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
