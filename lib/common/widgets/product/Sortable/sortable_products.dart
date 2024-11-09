import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layout/grid_layout.dart';
import '../products_cards/product_card_vertical.dart';

class RSortableProducts extends StatelessWidget {
  const RSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name','Heigher Price','Lower Price','Sale','Newest','Popularity'
          ].map((option)=> DropdownMenuItem(
              value: option,
              child: Text(option))).toList(),),

        SizedBox(height: RSizes.spaceBtwItemsSections,),


        ///Products Grid
        RGridLayout(itemCount: 14, itemBuilder: (_,index)=> RProductCardVertical())

      ],
    );
  }
}
