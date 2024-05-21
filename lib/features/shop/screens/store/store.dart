import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/tabbar.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tapu_tapi_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:tapu_tapi_shop/common/widgets/images/circular_image.dart';
import 'package:tapu_tapi_shop/common/widgets/layouts/grid_layout.dart';
import 'package:tapu_tapi_shop/common/widgets/products.cart/cart/cart_menu_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:tapu_tapi_shop/common/widgets/texts/section_heading.dart';
import 'package:tapu_tapi_shop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/enums.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';
import 'package:tapu_tapi_shop/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}, iconColor: Colors.white),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(height: TSizes.spaceBtwItems),
                          const TSearchContainer(
                              text: 'Search in Store',
                              showBorder: true,
                              showBackground: false),
                          const SizedBox(height: TSizes.spaceBtwSections),
                          TSectionHeading(
                              title: 'Featured Brands', onPressed: () {}),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: TRoundedContainer(
                                    padding: const EdgeInsets.all(TSizes.sm),
                                    showBorder: true,
                                    backgroundColor: Colors.transparent,
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: TCircularImages(
                                            isNetworkImage: false,
                                            image: TImages.clothIcon,
                                            backgroundColor: Colors.transparent,
                                            overlayColor:
                                                THelperFunctions.isDarkMode(
                                                        context)
                                                    ? TColors.white
                                                    : TColors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                            width: TSizes.spaceBtwItems / 2),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const TBrandTitleWithVerifiedIcon(
                                                  title: 'Nike',
                                                  brandTextSize:
                                                      TextSizes.large),
                                              Text(
                                                '256 Products',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                    bottom: const TTabBar(
                      tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Sports')),
                      ],
                    )),
              ];
            },
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
