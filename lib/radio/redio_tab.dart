import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_route_1/my_theme.dart';

class RedioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.13),
            child: Image.asset('assets/images/radio_logo.png')),
        Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.04,
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Text(
              AppLocalizations.of(context)!.radio_station,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.skip_previous,
              color: MyTheme.primaryLight,
              size: 35,
            ),
            Icon(
              Icons.play_arrow,
              size: 50,
              color: MyTheme.primaryLight,
            ),
            Icon(
              Icons.skip_next,
              color: MyTheme.primaryLight,
              size: 35,
            ),
          ],
        )
      ],
    );
  }
}
