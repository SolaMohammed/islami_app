import 'package:first_app_islami/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
 bool arSwitch=false;
 late SettingsProvider provider;
 bool darkSwitch=false;

  Widget build(BuildContext context) {
    provider=Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.settings,style: TextStyle(fontSize: 24,
          fontWeight: FontWeight.bold,
          ),
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              SizedBox(width: 12,),
              Text(AppLocalizations.of(context)!.arabic,style: TextStyle(fontSize: 22,)),
              Spacer(),
              Switch(value: arSwitch, onChanged: (newValue) {
                arSwitch=newValue;
                if(arSwitch){
                  provider.setCurrentLocale("ar");
                }else{
                  provider.setCurrentLocale("en");
                }

              },activeColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 12,),
              Text(AppLocalizations.of(context)!.dark_mode,style: TextStyle(fontSize: 22,)),
              Spacer(),
              Switch(value: darkSwitch, onChanged: (newValue) {
               darkSwitch=newValue;
               if(darkSwitch){
                 provider.setCurrentMode(ThemeMode.dark);
               }else{
                 provider.setCurrentMode(ThemeMode.light);
               }
              },activeColor: Theme.of(context).primaryColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
