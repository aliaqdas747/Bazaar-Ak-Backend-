import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../images/r_circular_image.dart';

class RUserProfileTitle extends StatelessWidget {
  const RUserProfileTitle({
    super.key, required this.onPressed,
  });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RCircularImage(
        image: RImages.user,
        width: 60,
        height: 60,
        padding:0,
      ),
      title: Text(
        'Al Bastie',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: RColors.white),
      ),
      subtitle: Text(
        'aliaqdas747@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: RColors.white),
      ),
      trailing: IconButton(onPressed: onPressed, icon:const Icon(Iconsax.edit,color: Colors.white,)),
    );
  }
}
