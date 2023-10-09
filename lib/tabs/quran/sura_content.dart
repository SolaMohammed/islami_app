import 'package:first_app_islami/providers/settings_provider.dart';
import 'package:first_app_islami/tabs/quran/quran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class SuraContent extends StatefulWidget {
 static const String routeName='sura_content';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> verses=[];
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as suraDetails;
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    if(verses.isEmpty)loadFile(args.suraNumber);

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
    title: Text(AppLocalizations.of(context)!.islami),
    ),
    body:Container(

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 60,horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(args.suraName,style: theme.textTheme.bodyMedium,
              ),
              Icon(Icons.play_circle)
            ],
          ),
          Divider(
            color: theme.primaryColor,
            indent: 10,
            endIndent: 10,
            thickness: 2,
          ),
          verses.length==0 ?
          Center(child: CircularProgressIndicator()):
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>Text(verses[index])
              ,itemCount: verses.length,
            ),
          )
        ],
      ),
      decoration: provider.isDark()==true?
      BoxDecoration(
        color: Color(0xFF141A2E),
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

  void loadFile(int index)async{
   String content = await rootBundle.loadString("assets/files/${index+1}.txt");
   List<String> lines=content.split("\n");
   verses=lines;
   setState(() {
   });
  }
}
