import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tapu_tapi_shop/common/widgets/list_tile/user_profile_tile.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/features/personalization/screens/settings/setting_menu_tile.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        TPrimaryHeaderContainer(
          child: Column(
            children: [
              TAppBar(
                title: Text('Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white)),
              ),
              const TUserProfileTile(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TSectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSettingMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Address',
                  subTitle: 'Set your address for delivery',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: 'View your cart items',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subTitle: 'View your orders history',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.bank,
                  title: 'My Payment',
                  subTitle: 'View your payment methods',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subTitle: 'View your coupons',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notification',
                  subTitle: 'Set your notification preferences',
                  onTap: () {}),
              TSettingMenuTile(
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subTitle: 'Set your account privacy settings',
                  onTap: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),
              TSettingMenuTile(
                  icon: Iconsax.document_upload,
                  title: 'Load Data',
                  subTitle: 'Load your data from the cloud',
                  onTap: () {}),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Sign Out'),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections * 2.5),
            ],
          ),
        )
      ],
    )));
  }
}
