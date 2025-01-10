import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/notification/notification.dart';
import 'package:justtrainingmygryobanniyskill/features/home/order/order.dart';
import 'package:justtrainingmygryobanniyskill/features/home/home.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/profile_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const NotificationPage(),
    const OrderPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.auth_bg_color,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.auth_bg_color,
        selectedItemColor: AppColors.splashBgColor,
        currentIndex: _currentIndex,

        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.home_2),
            label: '',
            backgroundColor: AppColors.auth_bg_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.notification_1),
            label: '',
            backgroundColor: AppColors.auth_bg_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.receipt_1),
            label: '',
            backgroundColor: AppColors.auth_bg_color,
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.profile),
            label: '',
            backgroundColor: AppColors.auth_bg_color,
          ),
        ],
      ),

    );
  }
}

BottomNavigationBarItem BottomNavigationBarItemWidget(
    String label, String imageUrl) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.auth_bg_color,
    label: label,
    icon: ImageIcon(
      AssetImage(imageUrl),
      size: 45,
    ),
  );
}
