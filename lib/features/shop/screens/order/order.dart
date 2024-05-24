import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/appbar/appbar.dart';
import 'package:tapu_tapi_shop/features/shop/screens/order/widgets/order_list.dart';
import 'package:tapu_tapi_shop/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
            title: Text('My Order',
                style: Theme.of(context).textTheme.headlineSmall),
            showBackArrow: true),
        body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TOrderListItems(),
        ));
  }
}
