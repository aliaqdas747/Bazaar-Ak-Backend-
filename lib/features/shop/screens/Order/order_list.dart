import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/features/shop/screens/Order/widgets/order_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppbar(
        title: Text('My Orders',style:  Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(padding: EdgeInsets.all(RSizes.defaultSpace),

      ///---- Order
      child: ROrdersListItems(),
      ),
    );
  }
}
