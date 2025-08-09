import 'package:flutter/material.dart';
import 'package:hypermart_app/core/text_styles.dart';
class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.onPressed,
    this.showActionButton = true,
    required this.title,
    required this.icon,
  });

  final bool showActionButton;
  final String title;
  final IconButton icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // To show the Heading and arrow button
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.dmSansBold.copyWith(fontSize: 18),
        ),
        if (showActionButton)
          IconButton(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
