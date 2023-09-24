import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_route_1/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemingBottomSheet extends StatefulWidget {
  @override
  State<ThemingBottomSheet> createState() => _ThemingBottomSheetState();
}

class _ThemingBottomSheetState extends State<ThemingBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.dark);
              },
              child: provider.isDarkMode()
                  ? getSelected(AppLocalizations.of(context)!.dark)
                  : unSelected(AppLocalizations.of(context)!.dark),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.light);
              },
              child: provider.isDarkMode()
                  ? unSelected(AppLocalizations.of(context)!.light)
                  : getSelected(AppLocalizations.of(context)!.light),
            ),
          ),
        ],
      ),
    );
  }

  Widget getSelected(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Icon(
          Icons.check,
          size: 25,
        )
      ],
    );
  }

  Widget unSelected(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
