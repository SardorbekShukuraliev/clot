import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/add_address.dart';

import '../../../core/consts/color.dart';

class AddressEditWidget extends StatelessWidget {
  const AddressEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.textareas_bg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Ограничиваем ширину текста для ellipsis
            Flexible(
              child: const Text(
                "2715 Ash Dr. San Jose, South Dakota 83475",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddAddress()),
                );
              },
              child: const Text(
                "Edit",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
