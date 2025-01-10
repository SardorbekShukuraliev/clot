import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? text;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text, required String imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.splashBgColor,
        minimumSize: const Size(double.infinity, 49),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
