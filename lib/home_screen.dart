import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';
import 'package:hypermart_app/utils/image_string.dart';
import 'package:hypermart_app/widgets/app_name_heading.dart';
import 'package:hypermart_app/widgets/exclusive_deals_section.dart';
import 'package:hypermart_app/widgets/popular_deals.dart';
import 'package:hypermart_app/widgets/previous_order_section.dart';
import 'package:hypermart_app/widgets/search_bar_widget.dart';
import 'package:hypermart_app/widgets/category_icon_widget.dart';
import 'package:hypermart_app/widgets/top_brands.dart';
import 'widgets/banner_widget.dart';
import 'widgets/location_widget.dart';
import 'widgets/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Row(
          children: [
            const AppNameHeading(),
            const Spacer(),
            Row(
              children: [
                Text('Eng', style: AppTextStyles.dmSansRegular.copyWith(fontSize: 15)),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: Colors.grey[700],
                ),
              ],
            ),

            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.redAccent),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const LocationWidget(),

            const SizedBox(height: 15),

            const SearchBarWidget(),

            const SizedBox(height: 15),

            const BannerWidget(),

            const SizedBox(height: 15),
            SectionHeading(title: 'Categories', showActionButton: true, icon: IconButton(icon: Icon(Icons.keyboard_arrow_right_sharp), onPressed: () {})),

            SizedBox(height: 15),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryIconWidget(height: 80, width: 80, backgroundColor: Colors.deepOrange, image: AppImages.groceries, categoryName: 'Groceries',),
                  SizedBox(width: 12),
                  CategoryIconWidget(height: 80, width: 80, backgroundColor: Colors.blue, image: AppImages.appliances, categoryName: 'Appliances',),
                  SizedBox(width: 12),
                  CategoryIconWidget(height: 80, width: 80, backgroundColor: Colors.pink, image: AppImages.fashion, categoryName: 'Fashion',),
                  SizedBox(width: 12),
                  CategoryIconWidget(height: 80, width: 80, backgroundColor: Colors.purple, image: AppImages.furniture, categoryName: 'Furniture',),
                  SizedBox(width: 12),
                  CategoryIconWidget(height: 80, width: 80, backgroundColor: Colors.tealAccent, image: AppImages.sports, categoryName: 'Sports',),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SectionHeading(title: 'Previous Order', showActionButton: false, icon: IconButton(icon: Icon(Icons.keyboard_arrow_right_sharp), onPressed: () {})),
            const SizedBox(height: 15),
            const PreviousOrderSection(),
            const SizedBox(height: 20),
            SectionHeading(title: 'Popular Deals', showActionButton: true, icon: IconButton(icon: Icon(Icons.keyboard_arrow_right_sharp), onPressed: () {})),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularDeals(showDiscountTag: true, image: AppImages.strawberry,showAddMinusButton: true,imageTitle: 'Strawberries',),
                PopularDeals(showDiscountTag: false, image: AppImages.chips, imageTitle: 'Chips',isLiked: true,),

              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularDeals(showDiscountTag: false, image: AppImages.sofa,showAddMinusButton: false,imageTitle: 'Modern Chair',isLiked: true,),
                PopularDeals(showDiscountTag: false, image: AppImages.machine,showAddMinusButton: true, imageTitle: 'LG Washing Machine',),
              ],
            ),
            const SizedBox(height: 15),
            SectionHeading(title: 'Top Brands', showActionButton: true, icon: IconButton(icon: Icon(Icons.keyboard_arrow_right_sharp), onPressed: () {})),
            SizedBox(
              height: 50,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 TopBrands(image: AppImages.garnier),
                  SizedBox(width: 15),
                  TopBrands(image: AppImages.lakme),
                  SizedBox(width: 15),
                  TopBrands(image: AppImages.maybelline),
                  SizedBox(width: 15),
                  TopBrands(image: AppImages.revlon),
                  SizedBox(width: 15),
                  TopBrands(image: AppImages.sugar),
                  SizedBox(width: 15),
                ],
              ),
            ),

            SectionHeading(title: 'Exclusive Beauty Deals', showActionButton: true, icon: IconButton(icon: Icon(Icons.keyboard_arrow_right_sharp), onPressed: () {})),
            SizedBox(width: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ExclusiveBeautyDealsSection(image: AppImages.garnier, discountText: '10% OFF'),
                SizedBox(width: 15),
                ExclusiveBeautyDealsSection(image: AppImages.revlon, discountText: '20% OFF'),
                SizedBox(width: 15),
                ExclusiveBeautyDealsSection(image: AppImages.maybelline, discountText: '15% OFF'),
              ],
            ),
            SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExclusiveBeautyDealsSection(image: AppImages.sugar, discountText: '5% OFF'),
                SizedBox(width: 15),
                ExclusiveBeautyDealsSection(image: AppImages.lakme, discountText: '20% OFF'),
                SizedBox(width: 15),
                ExclusiveBeautyDealsSection(image: AppImages.sugar, discountText: '60% OFF'),
              ],
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    ),
    );
  }
}