import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_item_info.dart';
import 'custom_tile.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> imageData = [
      {
        'foodName': 'Burger',
        'image':
            'https://images.pexels.com/photos/2271107/pexels-photo-2271107.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Pizza',
        'image':
            'https://images.pexels.com/photos/1566837/pexels-photo-1566837.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Chicken Fry',
        'image':
            'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Chicken Tika',
        'image':
            'https://images.pexels.com/photos/24182617/pexels-photo-24182617/free-photo-of-fried-chickens-served-on-wooden-tray.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Cold Drinks',
        'image':
            'https://images.pexels.com/photos/8181548/pexels-photo-8181548.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Fish Salad',
        'image':
            'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'foodName': 'Platter of Foods',
        'image':
            'https://images.pexels.com/photos/941869/pexels-photo-941869.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
      {
        'foodName': 'Macaroni',
        'image':
            'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'foodName': ' Beef Steak',
        'image':
            'https://images.pexels.com/photos/299347/pexels-photo-299347.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      },
      {
        'foodName': 'Burrito',
        'image':
            'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=600'
      },
    ];
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: imageData.length,
      itemBuilder: (context, index) {
        final data = imageData[index];
        return Column(
          children: [
            SizedBox(
              height: 200,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  child: Image.network(
                    data['image'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
            ),
            CustomItemInfo(
              data: data['foodName'], // food name from list
              value: index,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTile(
              data: data['foodName'],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        );
      },
    );
  }
}
