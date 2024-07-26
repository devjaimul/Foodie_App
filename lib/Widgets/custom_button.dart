
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class CustomButton extends StatelessWidget {
  final bool? isTrue;
  const CustomButton({
    super.key,
    this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: HeadingTwo(
            data: isTrue == true
                ? 'Order Placed Successfully !!'
                : 'Added to Cart Successfully !!',
            color:  AppColors.primaryColor,
          ),
          backgroundColor:AppColors.whiteColors.withOpacity(0.9),
          duration: const Duration(seconds: 2),
        ));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor:
              isTrue == true ?AppColors.primaryColor: AppColors.greenColors ),
      child: HeadingTwo(
        data: isTrue == true ? 'Order Now' : 'Add to Cart',
        color: AppColors.whiteColors,
      ),
    );
  }
}
