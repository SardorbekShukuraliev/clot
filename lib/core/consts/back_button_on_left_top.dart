import 'package:flutter/material.dart';

class BackButtonOnLeftTop extends StatefulWidget {
  const BackButtonOnLeftTop({super.key});

  @override
  State<BackButtonOnLeftTop> createState() => _BackButtonOnLeftTopState();
}

class _BackButtonOnLeftTopState extends State<BackButtonOnLeftTop> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          color: Color(0xFF29293D), // Фон для кнопки
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          "assets/icons/back_button.png", // Укажите путь к изображению
        ),
      ),
    );
  }
}
