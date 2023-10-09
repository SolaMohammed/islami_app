import 'package:first_app_islami/tabs/hadeeth/hadeeth_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Hadeeth extends StatefulWidget {

  @override
  State<Hadeeth> createState() => _HadeethState();
}

class _HadeethState extends State<Hadeeth> {
  List<Hadeth> ahadeethList=[];
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if(ahadeethList.isEmpty)loadHadeeth();
    return Column(
      children: [
        Image.asset("assets/images/hadeeth_image.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 2,
          endIndent: 10,
          indent: 10,
        ),
        Text(AppLocalizations.of(context)!.hadeeth, textAlign: TextAlign.center),
        Divider(
          color: theme.primaryColor,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
            child: ahadeethList.isEmpty?
            Center(child: CircularProgressIndicator(color: theme.primaryColor,)):
        ListView.builder(
              itemBuilder: (context, index) =>
                  InkWell(
                      child: Text(
                        ahadeethList[index].title,textAlign: TextAlign.center,),
                    onTap: () => Navigator.pushNamed(context, HadethContent.routeName,
                    arguments: Hadeth(title: ahadeethList[index].title,
                        content: ahadeethList[index].content)),
                  ),
              itemCount: ahadeethList.length,
            ))
      ],
    );
  }

  void loadHadeeth()async{
   String hadeethContent =await rootBundle.loadString("assets/files/ahadeth.txt");
   List<String> hadeethList=hadeethContent.split("#\r\n");
   for(int i=0;i<hadeethList.length;i++){
     List<String> hadeethLines=hadeethList[i].split("\n");
     String title=hadeethLines[0];
     hadeethLines.removeAt(0);
     Hadeth h=Hadeth(title: title, content: hadeethLines);
     ahadeethList.add(h);
     setState(() {

     });
   };
  }
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title,required this.content});
}
