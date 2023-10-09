import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class Radio0 extends StatelessWidget {

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        Image.asset("assets/images/radio_image.png"),
    SizedBox(height: 30,),
    Text(AppLocalizations.of(context)!.quran_kareem_radio,
        textAlign: TextAlign.center,style:theme.textTheme.bodySmall
    ),
        SizedBox(height: 50,),
         Container(
           alignment: Alignment.center,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_left,color: theme.primaryColor,size: 80,),
                Icon(Icons.play_arrow,color: theme.primaryColor,size: 80,),
                Icon(Icons.arrow_right,color: theme.primaryColor,size: 80,),

              ],
            ),
         ),
        Spacer(),
    ]
    );
  }
}
