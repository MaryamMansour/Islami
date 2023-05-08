import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/sura_content_provider.dart';
import 'package:islami_app/suraData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class suraContent extends StatelessWidget {
  static const String routeName="surahContent";



  @override
  Widget build(BuildContext context) {


    suraData model=ModalRoute.of(context)?.settings.arguments as suraData;//casting obj to suraData

    return ChangeNotifierProvider(
      create: (context)=> SuraDetailsProvider()..loadFile(model.index), // here when provider for only screen
      // we have to use builder with it
      builder: (context, child) {
        var pro = Provider.of<SuraDetailsProvider>(context);
       return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Brightness.light==Theme.of(context).brightness?
            "assets/images/main_bg.png":
            "assets/images/bg.png",),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              model.suraName,
              style: Theme.of(context).textTheme.bodyLarge,),
          ),
          body: pro.verses.isEmpty? Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )) :
          ListView.separated(separatorBuilder: (context, index)=>Divider(
            thickness: 1,
            endIndent: 40,
            indent: 40,
            color: Theme.of(context).primaryColor,
          ),
            itemBuilder:(context ,index) {
              return
                Center(
                    child: Text(
                      pro.verses[index],textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,)
                );

            }
            ,itemCount:pro.verses.length ,),


        ),

      ); },

    );
  }


}
