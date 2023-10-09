import 'package:first_app_islami/home_screen.dart';
import 'package:first_app_islami/providers/settings_provider.dart';
import 'package:first_app_islami/tabs/hadeeth/hadeeth_content.dart';
import 'package:first_app_islami/tabs/quran/sura_content.dart';
import 'package:first_app_islami/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create:(_) => SettingsProvider() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  late SettingsProvider provider;
  Widget build(BuildContext context) {
    provider=Provider.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme:  MyTheme.darkTheme,
      initialRoute: HomeScreen.routeName,
      supportedLocales: [Locale("ar"),Locale("en")],
      locale: Locale(provider.currentLocale),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      themeMode: provider.currentMode,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraContent.routeName:(context) => SuraContent(),
        HadethContent.routeName:(context) => HadethContent(),
      },
    );
  }
}
