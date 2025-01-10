import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/providers/localization/localization.dart';
import '../../../core/consts/color.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Locale _locale = const Locale('en'); // Текущая локаль

  void _changeLanguage(String languageCode) {
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Localization(
      locale: _locale,
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)?.get('title') ?? "Settings",
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
            backgroundColor: AppColors.auth_bg_color,
            leading: IconButton(
              icon: const Icon(IconsaxPlusBroken.arrow_left_2, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            color: AppColors.auth_bg_color,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)?.get('choose_language') ?? "Choose Language",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => _changeLanguage('en'),
                  child: LanguageCard(
                    language: AppLocalizations.of(context)?.get('english') ?? 'English',
                    flagAsset: 'assets/icons/en.png',
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () => _changeLanguage('ru'),
                  child: LanguageCard(
                    language: AppLocalizations.of(context)?.get('russian') ?? 'Russian',
                    flagAsset: 'assets/icons/ru.png',
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

class LanguageCard extends StatelessWidget {
  final String language;
  final String flagAsset;

  const LanguageCard({Key? key, required this.language, required this.flagAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.splashBgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(flagAsset, width: 40, height: 40),
          const SizedBox(width: 16),
          Text(
            language,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
