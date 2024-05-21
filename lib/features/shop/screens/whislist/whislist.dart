import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/icons/circular_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:tapu_tapi_shop/features/shop/screens/home/home.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Whislist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())]
          ),
        ),
      )
    );
  }
}