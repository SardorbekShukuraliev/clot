import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/checker.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';


class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        appBar: AppBar(
          leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: AppColors.textareas_bg,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              IconsaxPlusBroken.arrow_left_2,
              color: Colors.white,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: AppColors.auth_bg_color,
          title: const Text(
            "Order  #456765",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckerWidget(
                  process: 'Delivered', date: '28 May', checker: false),
              const CheckerWidget(
                  process: 'Delivered', date: '28 May', checker: false),
              const CheckerWidget(
                  process: 'Delivered', date: '28 May', checker: false),
              const CheckerWidget(
                  process: 'Delivered', date: '28 May', checker: false),
              const Text(
                "Order Items",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.textareas_bg,
                ),
                padding: const EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 70,
                child: Row(
                  children: [
                    const Icon(
                      IconsaxPlusBroken.receipt_1,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "4 items",
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(
                          color: AppColors.splashBgColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Shipping details",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.textareas_bg,
                ),
                padding: const EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 70,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2715 Ash Dr. San Jose, South Dakota 83475",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "121-224-7890",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


