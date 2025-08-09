import 'package:flutter/material.dart';
class TopBrands extends StatelessWidget {
  const TopBrands({super.key,
    this.image = '',
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withValues(alpha: 0.7),
      ),
      child: Image.asset(image),
    );
  }
}
