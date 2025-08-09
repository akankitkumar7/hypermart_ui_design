import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';
class AppNameHeading extends StatelessWidget {
  const AppNameHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // App Name Widget
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Hyper',
          style: AppTextStyles.dmSansBold.copyWith(fontSize: 18, color: AppColors.orange),
        ),
        TextSpan(
          text: 'Mart',
          style: AppTextStyles.dmSansBold
              .copyWith(fontSize: 18, color: AppColors.primaryGreen),
        )
      ]),
    );
  }
}

