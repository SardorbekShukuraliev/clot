import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/add_card_page.dart';
import 'arrow.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Arrow(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: IconsaxPlusBroken.arrow_left_2,
                    ),
                    const Text(
                      "Payment",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Cards",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                paymentContainer(context),
                paymentContainer(context),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Paypal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.textareas_bg,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Cloth@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      Arrow(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AddCardPage()),
                          );
                        },
                        icon: IconsaxPlusBroken.arrow_right_3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//! Widget
Widget paymentContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.textareas_bg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "**** 4187",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Image.asset('assets/images/paypal.png',width:25),
          const SizedBox(
            width: 200,
          ),
          Arrow(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddCardPage()),
              );
            },
            icon: IconsaxPlusBroken.arrow_right_3,),
        ],
      ),
    ),
  );
}
