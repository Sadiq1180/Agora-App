
import 'package:agora/widgets/Main_widgets/AppBarCustom.dart';
import 'package:agora/widgets/Main_widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}
class _LanguagesState extends State<Languages> {
  String? _selectedLanguage;
    void _changeLanguage(String? value) {
    setState(() { _selectedLanguage = value; });
  }
  Map<String, bool> Languages={
    "English":true,
    "Arabic":true,
    "Urdu":true,
    "Mandarin":true,
    "Russian":true,
    "Korean":true,
    "Mexican":true,
    "Bengali":true,
    "Hindi":true,
    "Indonesia":true,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Languages'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                'Suggested',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            Column(
              children: Languages.keys.map((key) {
                return SettingWidget(
                  title: key,
                  trailingWidget: Radio<String>(
                    activeColor: Colors.blue,
                     fillColor: MaterialStateProperty.all(Colors.blue),
                    hoverColor: Colors.blue,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: key,
                    groupValue: _selectedLanguage,
                    onChanged: _changeLanguage,
                  )
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
