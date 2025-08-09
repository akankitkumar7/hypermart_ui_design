import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';

class CategoryIconWidget extends StatelessWidget {
  const CategoryIconWidget({
    super.key,
    required this.image,
    required this.categoryName,
    required this.height,
    required this.width,
    required this.backgroundColor,
  });

  final String image;
  final String categoryName;
  final double height, width;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main container inside which category image and name will be shown
        Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: backgroundColor.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image of the Category
              Expanded(child: Image.asset(image, color: Colors.white.withValues(alpha: .7))),
              // Name of the category
              Text(categoryName,style: AppTextStyles.dmSansMedium.copyWith(fontSize: 10,color: AppColors.white), maxLines: 1,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ],
    );
  }
}
