import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';


class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
  final String? imgURL;

  const Arrow({super.key, required this.onPressed, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.textareas_bg,
        minimumSize: const Size(20, 20),
      ),
      onPressed: onPressed,
      child: Image.asset(
        imgURL!,
        height: 15,
        width: 15,
      ),
    );
  }
}
