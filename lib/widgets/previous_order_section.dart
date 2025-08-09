import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';
import 'package:hypermart_app/utils/image_string.dart';
class PreviousOrderSection extends StatelessWidget {
  const PreviousOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white
      ),
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Previous order Delivery information
                  Text('Delivered',style: AppTextStyles.poppinsMedium.copyWith(fontSize: 12,color: AppColors.primaryGreen)),
                  Text('On Wed, 27 Jul 2022',style: AppTextStyles.poppinsMedium.copyWith(fontSize: 12)),
                  SizedBox(height: 10),
                  // To show the previous ordered items
                  Container(
                    height: 65,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withValues(alpha: 0.3)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(AppImages.avocado,height: 50,width: 50,),
                        Image.asset(AppImages.pizza,height: 50,width: 50,),
                        Image.asset(AppImages.coke,height: 50,width: 50,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('+5'),
                            Text('More'),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Order Details
                          Text('Order ID: #4567890'),
                          SizedBox(height: 5),
                          Text('Final Total: ₹123',style: AppTextStyles.poppinsBold.copyWith(fontSize: 20),),
                        ],
                      ),
                      SizedBox(width: 30),
                      // Order Again Button
                      Container(
                        height: 50,
                        width: 118,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryGreen,
                        ),
                        child: Center(child: Text('Order Again',style: AppTextStyles.poppinsBold.copyWith(fontSize: 15,color: AppColors.white),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),

            // Discount Text
            Container(
              height: 190,
              width: 38,
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
              ),

              // To Rotate the text
              child: RotatedBox(
                quarterTurns: 3, // the text will rotate 270 degrees
                child: Center(
                  child: Text(
                    "Order Again Get Flat 10% OFF",
                    style: AppTextStyles.dmSansBold.copyWith(color: AppColors.white,fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
