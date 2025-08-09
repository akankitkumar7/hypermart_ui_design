import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';

class ExclusiveBeautyDealsSection extends StatelessWidget {
  const ExclusiveBeautyDealsSection({super.key,
    required this.discountText,
    required this.image,
  });

  final String discountText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Container to show the brand Image
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withValues(alpha: 0.7)
          ),
          child: Image.asset(image),
        ),

        // To position the discount container on the main container
        Positioned(
          top: 40,
          left: 23,

          // To the discount text
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primaryGreen,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 9, left: 15),
              child: Text(discountText, style: AppTextStyles.dmSansMedium.copyWith(fontSize: 12,color: AppColors.white)),
            ),
          ),
        )
      ],
    );
  }
}