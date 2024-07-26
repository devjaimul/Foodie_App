import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation_bar.dart';
import '../Widgets/custom_item_info.dart';
import '../Widgets/custom_tile.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Items'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomNavBar(),
                  ));
            },
            icon: const Icon(Icons.keyboard_backspace)),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  child: Image.network(
                    'https://images.pexels.com/photos/2133989/pexels-photo-2133989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
            ),
            const CustomItemInfo(
              data: 'Ramen Noodle', // food name from list
              value: 0,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTile(
              data:'Ramen Noodle',
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}