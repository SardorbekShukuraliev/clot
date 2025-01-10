import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/auth/sign_in/frst_sign_in.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/address_edit.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/payment_page.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/settings.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/wishlist.dart';

import '../../../providers/localization/localization.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50), // Радиус скругления
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover, // Для лучшего отображения
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.textareas_bg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Gilbert Jones",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Glbertjones001@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "121-224-7890",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  elevatedButton("Address", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddressEdit()),
                    );
                    // Navigator.pushNamed(context, RouteNames.addressEdit);
                  }),
                  elevatedButton("Wishlist", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Wishlist()),
                    );
                    // Navigator.pushNamed(context, RouteNames.wishlist);
                  }),
                  elevatedButton("Payment", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage()),
                    );
                    // Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                  elevatedButton("Help", () {}),
                  elevatedButton("Support", () {}),
                  elevatedButton("Language", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Localization(
                          locale: Locale('en'), // Или используйте текущий язык
                          child:
                              SettingsPage(), // Здесь укажите реальный виджет
                        ),
                      ),
                    );

                    // Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                    // Navigator.pushReplacementNamed(
                    //     context, RouteNames.signInEmail);
                  },
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//! Widget
Widget elevatedButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.textareas_bg,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Image.asset(
            "assets/icons/right.png",
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ),
  );
}
