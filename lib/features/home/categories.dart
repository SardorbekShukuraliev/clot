import 'package:flutter/material.dart';
import '../../core/consts/back_button_on_left_top.dart';
import '../../core/consts/color.dart';
import 'category_v_kvadrate.dart';


class ShopCategories extends StatelessWidget {
  const ShopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color, // Используем CustomColor для фона
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              BackButtonOnLeftTop(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Shop by Categories",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 30,
              ),
              // Пример изменения изображений
              CategoryButtonWidget(
                  imgURL: "assets/images/hoodie.png",
                  text: "Hoodies",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SecondShopCategories(category: "Hoodies",)),
                  );
                },
              ),
                CategoryButtonWidget(
                  imgURL: "assets/images/shorts.png",
                  text: "Shorts",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondShopCategories(category: "Shorts",)),
                    );
                  },
                ),
              CategoryButtonWidget(
                  imgURL: "assets/images/shoes.png",
                  text: "Shoes",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SecondShopCategories(category: "Shoes",)),
                  );
                },
              ),
              CategoryButtonWidget(
                  imgURL: "assets/images/bag.png",
                  text: "Bags",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SecondShopCategories(category: "Bags",)),
                  );
                },
              ),
              CategoryButtonWidget(
                  imgURL: "assets/images/accss.png",
                  text: "Accessories",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondShopCategories(category: "Accessories",)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButtonWidget extends StatelessWidget {
  final String imgURL;
  final String text;
  final VoidCallback onPressed;

  const CategoryButtonWidget({
    super.key,
    required this.imgURL,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 64),
          backgroundColor: Color(0xFF342F3F), // Используем CustomColor
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                imgURL,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
