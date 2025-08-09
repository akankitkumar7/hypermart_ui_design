import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({super.key,

    this.showDiscountTag = false,
    this.showAddToCartButton = false,
    required this.image,
    this.showAddMinusButton = false,
    this.imageTitle = '',
    this.isLiked = false,
    required this.price,
  });

  final bool showDiscountTag;
  final bool showAddToCartButton;
  final bool showAddMinusButton;
  final String image;
  final double price;
  final String imageTitle;
  final bool isLiked;

  /// You can make customize it as per choice.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        // Main thumbnail image
        Container(
          height: 300,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),

                // It will take only the space which is available
                Expanded(child: Image.asset(image,)),
                Text(imageTitle,
                    style: AppTextStyles.poppinsMedium.copyWith(fontSize: 12,)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ $price'),
                    Row(
                      children: [
                        Text('4.8'),
                        Icon(Icons.star, color: AppColors.orange,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),

                // Add to cart button or Add & minus Products Button
                showAddMinusButton ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.red,
                      ),
                      child: Center(child: Text('-',
                          style: AppTextStyles.poppinsMedium.copyWith(
                              fontSize: 25, color: AppColors.white))),
                    ),
                    Text('2', style: AppTextStyles.poppinsMedium.copyWith(
                        fontSize: 20, color: AppColors.primaryGreen)),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryGreen
                      ),
                      child: Center(child: Text('+',
                          style: AppTextStyles.poppinsMedium.copyWith(
                              fontSize: 25, color: AppColors.white))),
                    ),
                  ],
                ) : Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.orange),
                  ),
                  child: Center(child: Text('Add to cart',
                      style: AppTextStyles.dmSansRegular.copyWith(
                          fontSize: 12, color: AppColors.orange))),

                )
              ],
            ),
          ),
        ),

        // Heart icon top left
        isLiked ?
            Positioned(
              top: 8,
              left: 8,
              child: Icon(Icons.favorite, color: AppColors.red),
            )
            :Positioned(
              top: 8,
              left: 8,
              child: Icon(Icons.favorite_border, color: Colors.grey),
        ),

        // Discount tag top right
        if(showDiscountTag)
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Text(
                "5% OFF",
                style: AppTextStyles.poppinsMedium.copyWith(
                    fontSize: 12, color: AppColors.white),
              ),
            ),
          ),
      ],
    );
  }
}
