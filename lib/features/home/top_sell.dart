import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/back_button_on_left_top.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/clip_rect.dart';


class ProductsCategories extends StatelessWidget {
  final String? category;

  ProductsCategories({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        body: Padding(
          padding:
          const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonOnLeftTop(),
              const SizedBox(
                height: 20,
              ),
              Text(
                category!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  children: const [
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),
                    CustomClipRRect(
                      imgURL: "assets/images/1.png",
                      text: "Men's Harrington Jacket",
                      price: 1755,
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
