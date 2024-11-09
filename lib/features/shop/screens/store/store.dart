import 'package:bazaar_ak/app.dart';
import 'package:bazaar_ak/common/widgets/appbar/appbar.dart';
import 'package:bazaar_ak/common/widgets/appbar/tabbar.dart';
import 'package:bazaar_ak/common/widgets/brands/brand_card.dart';
import 'package:bazaar_ak/common/widgets/custom_shapes/container/search_container.dart';
import 'package:bazaar_ak/common/widgets/layout/grid_layout.dart';
import 'package:bazaar_ak/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:bazaar_ak/common/widgets/texts/section_heading.dart';
import 'package:bazaar_ak/features/shop/screens/brands/all_brands.dart';
import 'package:bazaar_ak/features/shop/screens/store/Widgets/categoryTab.dart';
import 'package:bazaar_ak/utils/constants/colors.dart';
import 'package:bazaar_ak/utils/constants/sizes.dart';
import 'package:bazaar_ak/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: RAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [RCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: RHelperFunctions.isDarkMode(context)
                        ? RColors.black
                        : RColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(RSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: RSizes.spaceBtwItems,
                          ),
                          const RSearchContainer(
                            text: 'Search in Store',
                            showBackground: false,
                            showBorder: true,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: RSizes.spaceBtwItemsSections,
                          ),

                          ///--Featured Brands
                          RSectionHeading(
                            title: 'Featured Brands',
                            showActionButton: true,
                            onPressed: ()=> Get.to(()=> AllBrandsScreen())
                          ),
                          const SizedBox(
                            height: RSizes.spaceBtwItems / 1.5,
                          ),

                          RGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const RBrandCard(
                                  showBorder: true,
                                );
                              })
                        ],
                      ),
                    ),

                    ///Tabs -- Tutorial  [Section # 3, Vedio 8]
                    bottom: const RTabBar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ]))
              ];
            },
            body: const TabBarView(children: [
              RCategoryTab(),
              RCategoryTab(),
              RCategoryTab(),
              RCategoryTab(),
              RCategoryTab(),
            ])),
      ),
    );
  }
}
