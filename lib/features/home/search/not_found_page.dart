import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.auth_bg_color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/chto_za_lupa_takaya.png",width: 100,height: 100,),
            const SizedBox(height: 20),
            const Text(
              'Sorry, we couldn\'t find any matching result for your Search.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 35),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.splashBgColor,
              ),
              child: const Text(
                'Go to Back',
                style: TextStyle(color: Colors.white,fontSize: 18,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
