import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';
import 'package:justtrainingmygryobanniyskill/features/auth/sign_in/frst_sign_in.dart';
import 'package:provider/provider.dart';
import '../../providers/loc_prov.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocalizationProvider(),
      child: Consumer<LocalizationProvider>(
        builder: (context, localizationProvider, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: AppColors.auth_bg_color,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: AppColors.auth_bg_color,
                selectedItemColor: AppColors.auth_bg_color,
                unselectedItemColor: Colors.white,
              ),
            ),
            debugShowCheckedModeBanner: false,
            locale: localizationProvider.locale,
            supportedLocales: const [
              Locale('en', ''),
              Locale('ru', ''),
            ],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBgColor,
      body: Center(
        child: Image.asset(
          'assets/images/clot.png',
          width: 185,
          height: 90,
        ),
      ),
    );
  }
}


