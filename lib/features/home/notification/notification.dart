
import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/notification/notice.dart';

class NotificationPage extends StatelessWidget {
  final bool hasNotification = true;

  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        appBar: AppBar(
          backgroundColor: AppColors.auth_bg_color,
          title: const Text(
            "Notifications",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: hasNotification
            ? Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              notice(
                "Gilbert, you placed and order check your",
                "order history for full details",
              ),
              notice(
                "Gilbert, you placed and order check your",
                "order history for full details",
              ),
              notice(
                "Gilbert, you placed and order check your",
                "order history for full details",
              ),
            ],
          ),
        )
            : SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/zvonok.png",width: 100,height: 100,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "No Notification yet",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.splashBgColor,
                  minimumSize: const Size(185, 52),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '',
                  );
                },
                child: const Text(
                  "Explore Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
