
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';
import 'custom_button.dart';
class CustomTile extends StatelessWidget {
  final String data;
  const CustomTile({
    super.key, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(

        leading: const Icon(Icons.add),
        title:  Text(
          'Do You Want Order This $data??',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('see more'),
        iconColor: AppColors.primaryColor,
        textColor: AppColors.primaryColor,
        onExpansionChanged: (value) {},
        childrenPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
        children: [
          HeadingTwo(
            data: "This software is provided to you free of charge. "
                "The author gives no warranty in relation to these software,"
                " and you use them at your own risk. By using or installing the software,"
                " you agree to be bound by the terms of this agreement. "
                "The author will not be liable for any damage to your system, "
                "any loss or corruption of any data or software, or any other loss or "
                "damage that you may suffer as a result of downloading or using the software,"
                " whether it results from the author's negligence or in any other way.",
            color: AppColors.blackColors.withOpacity(0.5),
            fontSize: 16,
          ),
          const SizedBox(height: 5,),
         const Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             CustomButton(),
             CustomButton(isTrue: true,),
           ],
         )
        ],
      ),
    );
  }
}