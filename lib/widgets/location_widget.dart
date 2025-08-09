import 'package:flutter/material.dart';
import 'package:hypermart_app/core/colors.dart';
import 'package:hypermart_app/core/text_styles.dart';
class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.circular(40),
          ),
          child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.location_pin,color: AppColors.white,size: 30,),
          ),
        ),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address of the User
            Text('Bengaluru',style: AppTextStyles.dmSansRegular.copyWith(fontSize: 12)),
            Text('BTM Layout, 500628',style: AppTextStyles.poppinsMedium.copyWith(fontSize: 15))
          ],
        ),
        SizedBox(width: 133),
        IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_sharp))
      ],

    );
  }
}
