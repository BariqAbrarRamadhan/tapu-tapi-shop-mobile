import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/images/rounded_image.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/product_title_text.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroudColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
                child: TProductTitleText(
                    title:
                        'Black Sport Shoes wwkkwkwkwkwkwudfhshdf',
                    maxLines: 1)),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(children: [
                    TextSpan(
                        text: 'Color',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    TextSpan(
                        text: 'Green',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge),
                    TextSpan(
                        text: 'Size',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall),
                    TextSpan(
                        text: 'UK 40',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge),
                  ])
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
