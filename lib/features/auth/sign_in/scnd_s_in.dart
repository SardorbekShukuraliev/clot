import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/Continue_button.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/back_button_on_left_top.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/sezed_boxs.dart';
import 'package:justtrainingmygryobanniyskill/features/home/footer/footer.dart';
import 'forgot_password.dart';


class SecondRegisterPage extends StatelessWidget {
  const SecondRegisterPage({Key? key}) : super(key: key);

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
            const BackButtonOnLeftTop(),
            SizedBoxes.height20,
            const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBoxes.height30,

            // Gmail
            Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textareas_bg,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                ),
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBoxes.height20,
            ContinueButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const BottomNavBar()),
              );
            }),



            SizedBoxes.height20,

            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Forgot Password? ',
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Reset',
                    style: const  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Forgot_Password_Page()),
                          );
                      },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}



