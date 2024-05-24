import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        TGridLayout(
            itemCount: 10,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
