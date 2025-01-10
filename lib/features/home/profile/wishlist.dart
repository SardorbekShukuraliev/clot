import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/arrow.dart';
import 'package:justtrainingmygryobanniyskill/features/home/top_sell.dart';
import '../../../core/consts/color.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        appBar: AppBar(
          leading: SizedBox(
            width: 40, // Указываем фиксированную ширину
            height: 40, // Указываем фиксированную высоту
            child: Arrow(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: IconsaxPlusBroken.arrow_left_2,
            ),
          ),
          backgroundColor: AppColors.auth_bg_color,
          centerTitle: true,
          title: const Text(
            "Wishlist",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
          child: Column(
            children: [
              notice("My Favorite", "12 Products", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsCategories(category: ''),
                  ),
                );
              }),
              notice("T-Shirts", "4 Products", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductsCategories(category: ''),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget notice(String text, String bText, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.textareas_bg,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    IconsaxPlusBroken.heart,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bText,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Arrow(
                  onPressed: onPressed,
                  icon: IconsaxPlusBroken.arrow_right_3,
                  width: 40,
                  height: 40,

                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
