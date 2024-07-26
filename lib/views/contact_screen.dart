
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Info'),
      ),
     body: Center(
       child: Padding(
         padding:  const EdgeInsets.all(8),
         child: Container(
           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           height: 200,
           width: double.infinity,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: AppColors.whiteColors.withOpacity(0.5),
               boxShadow: [
                 BoxShadow(
                   color: AppColors.blackColors.withOpacity(0.3),
                   blurRadius: 2,
                   spreadRadius: 1,
                 ),
               ]

                 
           ),
           child: const Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               HeadingTwo(data: 'Name : Jaimul Islam Akik'),
               HeadingTwo(data: 'Roll : 550675'),
               HeadingTwo(data: 'College : Faridpur Polytechnic Institute'),
               HeadingTwo(data: 'Address : Faridpur,Bangladesh'),
               HeadingTwo(data: 'Phone : 01845046271'),
               HeadingTwo(data: 'Email : jaimulislam7@gmail.com'),
             ],
           ),
         ),
       ),
     ),

    );
  }
}
