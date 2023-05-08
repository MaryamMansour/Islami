import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/tabs/AhadethTab.dart';
import 'package:islami_app/tabs/QuranTab.dart';
import 'package:islami_app/tabs/RadioTab.dart';
import 'package:islami_app/tabs/SebhaTab.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/tabs/settingTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  static const String routeName ="home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int index =0;
  List<Widget>tabs=[quranTab(),SebhaTab(),radioTab(),AhadethTab(),SettingsTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
           width: double.infinity,

            child: Image.asset(
              Brightness.light==Theme.of(context).brightness?
              "assets/images/main_bg.png":
              "assets/images/bg.png",
            fit: BoxFit.fill,)),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value){ // it gives me a value from the Icon I tapped on
              index=value; // stores it in index
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png"))
                  ,backgroundColor: myThemeData.lightColor
                  , label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),backgroundColor: myThemeData.lightColor,
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),backgroundColor: myThemeData.lightColor,
                  label:AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),backgroundColor: Theme.of(context).primaryColor,
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings )
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
