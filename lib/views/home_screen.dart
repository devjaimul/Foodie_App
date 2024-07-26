


import 'package:flutter/material.dart';

import '../Widgets/custom_drawer.dart';
import '../Widgets/custom_image.dart';
import '../utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.fastfood_outlined,size: 25,),
          Text(' Foodie'),
        ],),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const HeadingTwo(data: 'Search Option is Under Construction !!',color: Colors.pink,),
                backgroundColor: Colors.white.withOpacity(0.9),
                duration: const Duration(seconds: 2),

              ));
            }, icon: const Icon(
              Icons.search_rounded,
            )),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      body: const CustomImage(),
    );
  }
}
