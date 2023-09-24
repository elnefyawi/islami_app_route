import 'package:flutter/material.dart';
import 'package:islami_app_route_1/my_theme.dart';
import 'package:islami_app_route_1/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemHadethDetails extends StatelessWidget {
  String contant;

  ItemHadethDetails({
    required this.contant,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      contant,
      style: provider.isDarkMode()
          ? Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: MyTheme.golddark)
          : Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}
