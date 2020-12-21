import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Localization {
  final Locale locale;

  Localization(this.locale);

  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  Map<String, String> _loacalizationvalues;

  Future load() async {
    String jsonStringValues =
        await rootBundle.loadString("lib/lang/${locale.languageCode}");

    Map<String, dynamic> mapJson = json.decode(jsonStringValues);

    _loacalizationvalues =
        mapJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslatedValue(String key) {
    return _loacalizationvalues[key];
  }


  static const  LocalizationsDelegate<Localization> delegate=localdelegate();
}

class localdelegate extends LocalizationsDelegate<Localization> {

  const localdelegate();
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<Localization> load(Locale locale) async {
    Localization localization = new Localization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(localdelegate old) => false;
}
