import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/features/personalization/screens/address/widgets/single_address.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: RColors.primaryColor,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: RColors.white,
        ),
      ),
      appBar: RAppbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              RSingleAddress(selectedAddress: false),
              RSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
