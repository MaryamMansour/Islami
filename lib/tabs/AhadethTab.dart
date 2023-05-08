import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:islami_app/hadeth_content.dart';
import '../providers/ahadeth_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..loadFile(),
      builder: (context, child) {
        var prov = Provider.of<AhadethProvider>(context);
        return Column(
          children: [
            Image.asset("assets/images/hadethImg.png"),
            Divider(
              thickness: 2,
              color: Theme.of(context).primaryColor,
            ),
            Text(
             AppLocalizations.of(context)!.ahadeth,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  endIndent: 35,
                  indent: 35,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, hadethContent.routeName,
                          arguments: prov.allAhadeth[index]);
                    },
                    child: Text(
                      prov.allAhadeth[index].hadethName,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                },
                itemCount: prov.allAhadeth.length,
              ),
            ),
          ],
        );
      },
    );
  }
}