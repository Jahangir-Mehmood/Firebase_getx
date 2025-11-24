import 'package:firebase_getx/common/widgets/appbar/tabbar.dart';
import 'package:firebase_getx/common/widgets/brands/brand_card.dart';
import 'package:firebase_getx/features/shop/screens/store/widgets/category_tab.dart';
import 'package:firebase_getx/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

// class StoreScreen extends StatelessWidget {
//   const StoreScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = UHelperFunctions.isDarkMode(context);
//     return DefaultTabController(
//       length: 5,
//       child: Scaffold(
//         body: NestedScrollView(
//           headerSliverBuilder: (context, innerBoxIsScrolled) {
//             return [
//               SliverAppBar(
//                 automaticallyImplyLeading: false,
//                 expandedHeight: 320,
//                 pinned: true,
//                 floating: false,
//                 bottom: UTabBar(
//                   tabs: [
//                     Tab(child: Text('Sports')),
//                     Tab(child: Text('Furniture')),
//                     Tab(child: Text('Elctronics')),
//                     Tab(child: Text('Cloths')),
//                     Tab(child: Text('Cosmatics')),
//                   ],
//                 ),
//                 flexibleSpace: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       UStorePrimaryHeader(),
//                       SizedBox(height: uSpaceBtwItems),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: uDefaultSpace),
//                         child: Column(
//                           children: [
//                             USectionHeading(title: 'Brands', onPress: () {}),
//                             SizedBox(
//                               height: uBrandCardHeight,
//                               child: ListView.separated(
//                                 scrollDirection: Axis.horizontal,
//                                 separatorBuilder: (context, index) => SizedBox(width: uSpaceBtwItems),
//                                 itemCount: 10,
//                                 itemBuilder: (context, index) => UBrandcard(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: TabBarView(
//             children: [
//               URoundedContainer(
//                 showBorder: true,
//                 backgroundColor: Colors.transparent,
//                 padding: EdgeInsets.all(uSm),
//                 borderColor: uDarkGrey,
//                 margin: EdgeInsets.only(bottom: uSpaceBtwItems),
//                 child: Column(
//                   children: [
//                     UBrandcard(showBorder: false),
//                     URoundedContainer(
//                       margin: EdgeInsets.only(right: uSm),
//                       padding: EdgeInsets.all(uMd),
//                       backgroundColor: dark ? uDarkGrey : uLight,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,
                bottom: UTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Elctronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmatics')),
                  ],
                ),
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      UStorePrimaryHeader(),
                      SizedBox(height: uSpaceBtwItems),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: uDefaultSpace),
                        child: Column(
                          children: [
                            USectionHeading(title: 'Brands', onPress: () {}),
                            SizedBox(
                              height: uBrandCardHeight,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) => SizedBox(width: uSpaceBtwItems),
                                itemCount: 10,
                                itemBuilder: (context, index) => SizedBox(
                                  width: uBrandCardWidth,
                                  child: UBrandcard()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: [UCategoryTab(), UCategoryTab(), UCategoryTab(), UCategoryTab(), UCategoryTab()]),
        ),
      ),
    );
  }
}
