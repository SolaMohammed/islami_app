import 'package:first_app_islami/tabs/quran/quran_item.dart';
import 'package:first_app_islami/tabs/quran/sura_content.dart';
import 'package:first_app_islami/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Quran extends StatelessWidget {
  List <String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 2,
          endIndent: 10,
          indent: 10,
        ),
        Row(
          children: [
            Expanded(child: Text(AppLocalizations.of(context)!.sura_num, textAlign: TextAlign.center)),
            Container(
              color: theme.primaryColor,
              height: 45,
              width: 2,
            ),
            Expanded(child: Text(AppLocalizations.of(context)!.sura_name, textAlign: TextAlign.center)),
          ],
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, SuraContent.routeName
                            , arguments: suraDetails(suraName: suraNames[index],
                                suraNumber: index)),
                    child: QuranItem(
                        suraName: suraNames[index], suraNumber: "${index + 1}"),
                  ),
              itemCount: suraNames.length,
            ))
      ],
    );
  }
}
  class suraDetails{
  String suraName;
  int suraNumber;

  suraDetails({required this.suraName, required this.suraNumber});

  }

