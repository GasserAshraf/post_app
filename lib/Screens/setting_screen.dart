import 'package:flutter/material.dart';
import 'package:post_app/MainApp.dart';
import 'package:post_app/models/language_model.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void _changelang(language l) {
    Locale _temp;
    switch (l.languageCode) {
      case 'en':
        _temp = Locale(l.languageCode, 'US');
        break;
      case 'ar':
        _temp = Locale(l.languageCode, 'EG');
        break;
      default:
        _temp = Locale(l.languageCode, 'US');


    }
   // MainApp.setLocale(context,_temp);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: DropdownButton(
            items: language
                .languageList()
                .map<DropdownMenuItem<language>>((lang) => DropdownMenuItem(
                      value: lang,
                      child: Row(
                        children: <Widget>[Text(lang.name)],
                      ),
                    ))
                .toList(),
            onChanged: (language lan) {
              _changelang(lan);
            },
            elevation: 3,
            icon: Icon(
              Icons.language,
              color: Colors.blue,
            ),
            hint: Text("Change Language"),
            underline: SizedBox(),
          ),
        ),
      ),
    );
  }
}
