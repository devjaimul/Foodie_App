import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class CustomDetailsItem extends StatelessWidget {
  final IconData icon;
  final String data;
  final Color? color;
  const CustomDetailsItem({super.key, required this.icon, required this.data, this.color});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icon,size: 18,color: color,),
        const SizedBox(width: 2,),
        HeadingThree(data: data),
      ],
    );
  }
}
