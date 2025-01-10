import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/providers/localization/eng.dart';
import 'package:justtrainingmygryobanniyskill/providers/localization/ru.dart';

class LocalizationProvider with ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  Map<String, String> get translations {
    return _locale.languageCode == 'ru'
        ? ClotTextsRu.translations
        : ClotTextsEng.translations;
  }

  void switchLocale(String languageCode) {
    _locale = Locale(languageCode);
    notifyListeners();
  }

  String translate(String key) {
    return translations[key] ?? key;
  }
}


