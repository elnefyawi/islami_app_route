import 'package:flutter/material.dart';
import 'package:islami_app_route_1/hadeth/hadeth_tab.dart';
import 'package:islami_app_route_1/hadeth/item_hadeth_details.dart';
import 'package:islami_app_route_1/my_theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.03),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(15)),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return ItemHadethDetails(
                contant: '${args.content[index]}',
              );
            }),
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
