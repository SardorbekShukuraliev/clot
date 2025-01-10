import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class CustomButton extends StatelessWidget {
  final String text; // Текст кнопки
  final String imagePath; // Путь к изображению
  final VoidCallback onPressed; // Callback для действия

  const CustomButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        backgroundColor: AppColors.textareas_bg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 24.0,
            height: 24.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          SizedBox(width: 24.0),
        ],
      ),
    );
  }
}
