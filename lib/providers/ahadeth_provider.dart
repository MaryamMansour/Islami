import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/HadethModel.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];

  void loadFile() //async (in case if await is used)
  {

    //   try{
    //     String ahadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    //
    //   }
    //   catch(error){
    //   print(error);
    //   }
    // }
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadethFile){
      List<String> AhadethContent = ahadethFile.split("#");
      for(int i=0;i<AhadethContent.length;i++){
        List<String>hadethLines=AhadethContent[i].trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);

        String hadethContent="";
        for(int i =0;i<hadethLines.length;i++)
        {
          hadethContent+=hadethLines[i];
        }
        HadethModel hadethModel=HadethModel(title, hadethContent);
        allAhadeth.add(hadethModel);

      }
      notifyListeners();

    }).catchError((error){
      print(error);
    });

  }
}

