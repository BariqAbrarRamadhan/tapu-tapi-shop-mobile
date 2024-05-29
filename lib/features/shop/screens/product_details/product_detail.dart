import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:tapu_tapi_shop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  void _launchWhatsApp() async {
    const phoneNumber = '6287842235265'; // Replace with your phone number
    const message = 'Bisakah saya memesan barang?';
    final url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      // bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // const TRatingAndShare(),
                  const TProductMetaData(),
                  // const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: _launchWhatsApp,
                          child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sdasias dfdusahd chsaidhiashuhasiduuasfiuca sfc asoiu fc assuch as',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
                  // const Divider(),
                  // const SizedBox(height: TSizes.spaceBtwItems),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const TSectionHeading(
                  //         title: 'Reviews (199)', showActionButton: false),
                  //     IconButton(
                  //         icon: const Icon(Iconsax.arrow_right_3, size: 18),
                  //         onPressed: () {}),
                  //   ],
                  // ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
