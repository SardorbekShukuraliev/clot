import 'package:flutter/material.dart';

import '../../../core/consts/Continue_button.dart';
import '../../../core/consts/back_button_on_left_top.dart';
import '../../../core/consts/color.dart';
import '../../../core/consts/input.dart';
import '../../../core/consts/send_info_about_reset.dart';
import '../../../core/consts/sezed_boxs.dart';

class Forgot_Password_Page extends StatelessWidget {
  const Forgot_Password_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.auth_bg_color,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxes.height90,
            BackButtonOnLeftTop(),
            SizedBoxes.height20,
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBoxes.height30,

            // Gmail
            const TextFieldArea(),
            SizedBoxes.height20,

            // Continue button
            ContinueButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Send_info_Page()),
                );
              },
            ),
            SizedBoxes.height20,
          ],
        ),
      ),
    );
  }
}
