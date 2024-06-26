import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
      this.currencySign = 'Rp. ',
      required this.price,
      this.isLarge = false,
      this.maxLines = 1,
      this.lineThrough = false});

  final String currencySign, price;
  final bool isLarge, lineThrough;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleSmall!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
