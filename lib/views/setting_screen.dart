
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';
import 'favourite_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> data = [
      {},
      {
        'name': 'Account',
        'icon': const Icon(Icons.key),
      },
      {
        'name': 'Privacy',
        'icon': const Icon(Icons.lock_outline),
      },
      {
        'name': 'Avatar',
        'icon': const Icon(Icons.emoji_emotions_outlined),
      },
      {
        'name': 'Chats',
        'icon': const Icon(Icons.chat),
      },
      {
        'name': 'Notifications',
        'icon': const Icon(Icons.notifications),
      },
      {
        'name': 'Storage and data',
        'icon': const Icon(Icons.storage),
      },
      {
        'name': 'App Language',
        'icon': const Icon(Icons.language),
      },
      {
        'name': 'Help',
        'icon': const Icon(Icons.help_outline),
      },
      {
        'name': 'Invite a friend',
        'icon': const Icon(Icons.person_2),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouriteScreen(),
                  ));
            },
            icon: const Icon(Icons.keyboard_backspace)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
              child: index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/147/939/790/digital-art-anime-naruto-shippuuden-hatake-kakashi-wallpaper-preview.jpg'),
                        ),
                        title: const HeadingTwo(
                          data: 'Kakashi Hatake',
                          fontSize: 18,
                        ),
                        subtitle: const Text('Premium Subscribers'),
                        trailing: Icon(
                          Icons.qr_code_2,
                          color: AppColors.primaryColor,
                          size: 34,
                        ),
                      ),
                    )
                  : InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: HeadingTwo(
                      data: "${data[index]['name']} is Under Construction !!",
                      color: AppColors.primaryColor,
                    ),
                    backgroundColor: AppColors.whiteColors.withOpacity(0.9),
                    duration: const Duration(seconds: 2),
                  ));
                },
                    child: ListTile(
                        leading: data[index]['icon'],
                        title: HeadingTwo(
                          data: data[index]['name'],
                          fontSize: 18,
                        ),
                      ),
                  ));
        },
      ),
    );
  }
}
