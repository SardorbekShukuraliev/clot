import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';


Widget notice(String text, String b_text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.textareas_bg,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
           const Icon(IconsaxPlusBroken.notification_1,color: Colors.white,),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  b_text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}