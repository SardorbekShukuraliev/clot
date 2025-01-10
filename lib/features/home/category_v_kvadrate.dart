import 'package:flutter/material.dart%20';

import '../../core/consts/back_button_on_left_top.dart';
import '../../core/consts/color.dart';

class SecondShopCategories extends StatefulWidget {
  final String category; // Параметр для категории

  SecondShopCategories({super.key, required this.category});

  @override
  State<SecondShopCategories> createState() => _SecondShopCategoriesState();
}

class _SecondShopCategoriesState extends State<SecondShopCategories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const BackButtonOnLeftTop(),
              const SizedBox(height: 30),
              // Используем переданную категорию
              Text(
                widget.category, // Здесь отображается текст выбранной категории
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 30),
              // Другие элементы на странице...
            ],
          ),
        ),
      ),
    );
  }
}
