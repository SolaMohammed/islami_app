import 'package:first_app_islami/providers/settings_provider.dart';
import 'package:first_app_islami/tabs/hadeeth/hadeeth_screen.dart';
import 'package:first_app_islami/tabs/quran/quran_screen.dart';
import 'package:first_app_islami/tabs/radio/radio_screen.dart';
import 'package:first_app_islami/tabs/tasbeeh/tasbeeh_screen.dart';
import 'package:first_app_islami/tabs/Settings/settings_screen.dart';
import 'package:first_app_islami/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
 static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex=0;
  List<Widget> screens=[Quran(),Hadeeth(),Tasbeeh(),Radio0(),Settings()];
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill,
          image: provider.isDark()==false ?
          AssetImage("assets/images/quran_background.png" )
              :
          AssetImage("assets/images/quran_background_dark.png" )
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.islami
        ),
    ),
         bottomNavigationBar: BottomNavigationBar(
           onTap: (int index) {
             setState(() {
               selectedIndex=index;
             });
           },
           currentIndex: selectedIndex,
           items: [
             BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
            label: AppLocalizations.of(context)!.quran
          ),
             BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/images/hadeeth_icon.png')),
                 label: AppLocalizations.of(context)!.hadeeth
             ),
             BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                 label: AppLocalizations.of(context)!.sebha
             ),
             BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                 label: AppLocalizations.of(context)!.radio
             ),
             BottomNavigationBarItem(
                 icon: Icon(Icons.settings),
                 label: AppLocalizations.of(context)!.settings
             ),
           ],
         ),
        body: screens[selectedIndex])

    );

  }
}
