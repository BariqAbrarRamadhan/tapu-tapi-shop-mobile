import 'package:flutter/material.dart';
import 'package:tapu_tapi_shop/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';

class THomeCatgories extends StatelessWidget {
  const THomeCatgories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}