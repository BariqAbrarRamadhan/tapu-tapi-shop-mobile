import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tapu_tapi_shop/common/widgets/images/circular_image.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/enums.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, this.onTap, required this.showBorder});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(TSizes.sm),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: TCircularImages(
                  isNetworkImage: true,
                  image: TImages.clothIcon,
                  backgroundColor: Colors.transparent,
                  overlayColor: isDark ? TColors.white : TColors.black,
                ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                    Text(
                      '256 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              )
                ],
          )
          ),
    );
  }
}
