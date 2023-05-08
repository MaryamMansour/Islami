import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_content.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/hadeth_content.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider()),
    // ChangeNotifierProvider(create:  (context)=>SuraDetailsProvider()),
  ], child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"), Locale("ar")],
      locale: Locale(provider.language),
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode: provider.themeMode,
      routes: {
        homeScreen.routeName: (context) => homeScreen(),
        suraContent.routeName: (context) => suraContent(),
        hadethContent.routeName: (context) => hadethContent(),
      },
    );
  }
}