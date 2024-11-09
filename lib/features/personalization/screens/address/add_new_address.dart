import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppbar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
                ),
                SizedBox(
                  height: RSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone'),
                ),
                SizedBox(
                  height: RSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street'),
                    )),
                    SizedBox(
                      width: RSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code'),
                    )),
                  ],
                ),
                SizedBox(
                  height: RSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City'),
                    )),
                    SizedBox(
                      width: RSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State'),
                    )),
                  ],
                ),
                SizedBox(
                  height: RSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'Country'),
                ),
                SizedBox(
                  height: RSizes.defaultSpace,
                ),
                SizedBox(width: double.infinity,
                
                child: ElevatedButton(onPressed: (){}, child: Text('Save')),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
