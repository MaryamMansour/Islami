import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/suraData.dart';
import 'package:islami_app/sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class quranTab extends StatelessWidget {


  List<String> suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_bg.png"),
          Divider(
            thickness: 2,
            color: myThemeData.lightColor,
          ),
          Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.bodyMedium,),
          Divider(
            thickness: 2,
            color: myThemeData.lightColor,
          ),
          Expanded(
            child: ListView.separated(
            separatorBuilder: (context,index)=>Divider(
              thickness: 1,
              endIndent: 35,
              indent: 35,
            ),
              // vertical divider at part 1 at 1:41
              itemBuilder: (context,index){
              return InkWell(
                onTap: ()
                {
                  Navigator.pushNamed(context, suraContent.routeName,
                  arguments: suraData(suraName:
                  suraNames[index], index: index) );
                },
                child: Text(suraNames[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
              );
            },itemCount: suraNames.length,),
          )

        ],
      ),
    );
  }
}
