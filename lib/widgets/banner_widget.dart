import 'package:flutter/material.dart';
import 'package:hypermart_app/utils/image_string.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Home Screen Banner
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(AppImages.banner),
    );
  }
}
