
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/arrow.dart';
import 'package:justtrainingmygryobanniyskill/features/home/profile/cst_button.dart';

import '../../../core/consts/color.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.auth_bg_color,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    "Add Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "Street Address",
                      fillColor: AppColors.textareas_bg,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // InputBorder.none,
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      hintText: "City",
                      fillColor: AppColors.textareas_bg,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              // InputBorder.none,
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            hintText: "State",
                            fillColor: AppColors.textareas_bg,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              // InputBorder.none,
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 16),
                            hintText: "Zip Code",
                            fillColor: AppColors.textareas_bg,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  text: 'Save', imagePath: '',)
            ],
          ),
        ),
      ),
    );
  }
}
