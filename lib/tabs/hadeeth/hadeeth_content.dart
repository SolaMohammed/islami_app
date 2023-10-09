import 'package:first_app_islami/providers/settings_provider.dart';
import 'package:first_app_islami/tabs/hadeeth/hadeeth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class HadethContent extends StatelessWidget {
  static const String routeName='Hadeth_content';
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
              image:  provider.isDark()==false ?
              AssetImage("assets/images/quran_background.png" )
                  :
              AssetImage("assets/images/quran_background_dark.png" )
          )
          ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.islami),
            ),
            body:Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              margin: EdgeInsets.symmetric(vertical: 60,horizontal: 30),
              child: Column(
                children: [
                  Text(args.title,style: theme.textTheme.bodyMedium,
                  ),
                  Divider(
                    color: theme.primaryColor,
                    indent: 10,
                    endIndent: 10,
                    thickness: 2,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) =>Text(args.content[index])
                      ,itemCount: args.content.length,
                    ),
                  )
                ],
              ),
              decoration:
              provider.isDark()==true?
              BoxDecoration(
                color:  Color(0xFF141A2E),
                borderRadius: BorderRadius.circular(25),
              ):
              BoxDecoration(
              color:Color(0xFFF8F8F8).withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
              )
            )
        )
    );
  }



}
