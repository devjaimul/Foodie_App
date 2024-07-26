import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';
import 'item_details.dart';

class CustomItemInfo extends StatelessWidget {
  final String data;
  final int? value;

  const CustomItemInfo({
    super.key,
    required this.data,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.whiteColors,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColors.withOpacity(0.3),
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingTwo(data: data),
            value! % 2 == 0
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDetailsItem(
                        icon: Icons.star,
                        data: '4.5',
                        color: AppColors.orangeColors,
                      ),
                      const CustomDetailsItem(
                          icon: Icons.attach_money_rounded, data: '50 minimum'),
                      const CustomDetailsItem(
                          icon: Icons.directions_bike, data: '1.5 km'),
                      const CustomDetailsItem(
                          icon: CupertinoIcons.time, data: '20-25 min'),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDetailsItem(
                        icon: Icons.star,
                        data: '3.4',
                        color: AppColors.orangeColors,
                      ),
                      const CustomDetailsItem(
                          icon: Icons.attach_money_rounded, data: '80 minimum'),
                      const CustomDetailsItem(
                          icon: Icons.directions_bike, data: '2.3 km'),
                      const CustomDetailsItem(
                          icon: CupertinoIcons.time, data: '40-45 min'),
                    ],
                  ),
          ],
        ));
  }
}
