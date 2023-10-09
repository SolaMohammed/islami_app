import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  String suraName;
  String suraNumber;
 QuranItem({required this.suraName,required this.suraNumber});
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(child: Text(suraNumber,textAlign: TextAlign.center)),
        Container(
          color: theme.primaryColor,
          height: 45,
          width:2,
        ),
        Expanded(child: Text(suraName, textAlign: TextAlign.center)),
      ],
    );
  }
}
