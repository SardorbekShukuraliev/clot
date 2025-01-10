import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/order/back_arrow.dart';
import 'package:justtrainingmygryobanniyskill/features/home/order/ord_det.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.textareas_bg,
      ),
      child: Row(
        children: [
          const Icon(
            IconsaxPlusBroken.receipt_1,
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order  #456765',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                '4 items',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          //here
          Arrow(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderDetails()),
              );
            },
            imgURL: 'assets/icons/right.png',
          ),
        ],
      ),
    );
  }
}
