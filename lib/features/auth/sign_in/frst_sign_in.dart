import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/auth/sign_in/scnd_s_in.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/input.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/sezed_boxs.dart';
import 'package:justtrainingmygryobanniyskill/features/auth/sign_up/create_account.dart';
import '../../../core/consts/Continue_button.dart';
import '../../../core/consts/social_buttons_in_frst_sign_in.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.auth_bg_color,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Language Switch Buttons (You can keep these if you want language switching, but I remove it here)
            // For now, no language switching functionality

            // Title
            const Text(
              'Create Account', // Replaced localizationProvider.translate('create_account') with plain text
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
            ContinueButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRegisterPage()),
              );
            }),
            SizedBoxes.height20,

            // Create account
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Don\'t have an Account? ', // Replaced localizationProvider.translate('dont_have_account') with plain text
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Create one', // Replaced localizationProvider.translate('create_one') with plain text
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateAccountScreen()),
                        );
                      },
                  ),
                ],
              ),
            ),

            SizedBoxes.height90,

            // Social buttons
            CustomButton(text: 'Continue With Apple', imagePath: 'assets/icons/apple.png', onPressed: () {},),
            const SizedBox(height: 20),
            CustomButton(text: 'Continue With Google', imagePath: 'assets/icons/gulugulu.png', onPressed: () {},),
            const SizedBox(height: 20),
            CustomButton(text: 'Continue With Facebook', imagePath: 'assets/icons/fakebook.png', onPressed: () {},),
          ],
        ),
      ),
    );
  }
}
