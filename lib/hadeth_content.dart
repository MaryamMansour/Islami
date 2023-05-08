import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/HadethModel.dart';


class hadethContent extends StatelessWidget {
  static const String routeName="HadethContent";

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as HadethModel;

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
            args.hadethName,
            style: Theme.of(context).textTheme.bodyMedium,),
        ),
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Card(
              margin: EdgeInsets.all(17),
              elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( args.content , textDirection: TextDirection.rtl,),
                )
            ),
          ),
        )


      ),

    );
  }
}
