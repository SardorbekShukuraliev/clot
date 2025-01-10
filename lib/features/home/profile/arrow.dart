import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class Arrow extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double width;
  final double height;

  const Arrow({
    super.key,
    required this.onPressed,
    required this.icon,
    this.width = 40.0,
    this.height = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.textareas_bg,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
