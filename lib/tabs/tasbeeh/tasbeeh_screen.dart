import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Tasbeeh extends StatefulWidget {
  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
 int counter=0;
 int index=0;
 List<String> tasbeeh=[
   "سبحان الله",
   "الحمد لله",
   "الله أكبر",
   "لا اله الا الله",
 ];
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset("assets/images/sebha_header.png"),
              Padding(
                padding:  EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.08
                ),
                child: GestureDetector(
                  onTap: onTap,
                    child: Image.asset("assets/images/sebha_body.png")
                ),
              ),

          ],
          ),
          SizedBox(height: 25,),
          Text(AppLocalizations.of(context)!.tasbeeh_numbers,
              textAlign: TextAlign.center,style:theme.textTheme.bodySmall
          ),
          SizedBox(height: 25,),
          Container(child: Text("${counter}",style: TextStyle(color: Colors.white),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Text(
              "${tasbeeh[index]}",
              style: TextStyle(color: Colors.black),),

          ),
        ],
      ),
    );
  }

  void onTap(){
    counter++;
      if(counter%33==0) index++;
    if(index==tasbeeh.length) index=0;
        setState(() {
        });


    }

  }

