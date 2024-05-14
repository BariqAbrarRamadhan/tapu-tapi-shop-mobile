import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/cart/cart_menu_icon.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Colors.grey)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: Colors.white)),
        ],
      ),
      actions: [TCartCounterIcon(onPressed: () {}, iconColor: TColors.white)],
    );
  }
}
