import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tapu_tapi_shop/common/widgets/images/circular_image.dart';
import 'package:tapu_tapi_shop/utils/constants/colors.dart';
import 'package:tapu_tapi_shop/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImages(image: TImages.user, width: 50, height: 50, padding: 0),
      title: Text('John Doe', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text('support@coding.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}