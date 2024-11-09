import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/RRoundedContainer.dart';
import 'package:bazaar_ak/common/widgets/product/cart/cupoanWidget.dart';
import 'package:bazaar_ak/common/widgets/success_screen/succes_screen.dart';
import 'package:bazaar_ak/features/shop/screens/Checkout/widget/billing_address_section.dart';
import 'package:bazaar_ak/features/shop/screens/Checkout/widget/billing_amount_section.dart';
import 'package:bazaar_ak/features/shop/screens/Checkout/widget/billing_payment_section.dart';
import 'package:bazaar_ak/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: RAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///---Items in Cart
              const RCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),

              ///Coupon TextField
              const RCopounCode(),
              const SizedBox(
                height: RSizes.spaceBtwItemsSections,
              ),

              /// ---Billing Section
              Rroundedcontainer(
                padding: EdgeInsets.all(RSizes.md),
                showBorder: true,
                backgroundColor: dark ? RColors.dark : RColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    RBillingAmountSection(),

                    const SizedBox(
                      height: RSizes.spaceBtwItems,
                    ),

                    ///Divider
                    const Divider(),
                    const SizedBox(
                      height: RSizes.spaceBtwItems,
                    ),

                    ///PaymentMethod
                    RBillingPaymentSection(),
                    const SizedBox(
                      height: RSizes.spaceBtwItems,
                    )

                    ///Address
                    ,
                    RBillingAddressSection()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> SuccesScreen(image: RImages.success , title: 'Payment Successfull', subTitle: 'Yours items will be Shiped Soon')), child: Text('Checkout \$256434.0')),
      ),///continue
    );
  }
}
