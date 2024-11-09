import 'package:bazaar_ak/app.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../Sub_category/sub_categories.dart';

class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: RSizes.defaultSpace),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_, index) {
              return RVerticalImageText(image: RImages.sportIcon, title: 'Shose', onTap: ()=> Get.to(()=> SubCategoriesScreen()),);
            }),
      ),
    );
  }
}
