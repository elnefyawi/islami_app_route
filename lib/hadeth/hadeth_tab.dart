import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_route_1/hadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethLines = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethLines.isEmpty) {
      loadHadethFile();
    }
    return Column(children: [
      Center(child: Image.asset('assets/images/hadeth_logo.png')),
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 3,
      ),
      Text(
        'hadeth Name',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 3,
      ),
      ahadethLines.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                  );
                },
                itemBuilder: (context, index) {
                  return ItemHadethName(
                    hadeth: ahadethLines[index],
                  );
                },
                itemCount: 30,
              ),
            )
    ]);
  }

  void loadHadethFile() async {
    String hadethContant =
        await rootBundle.loadString('assets/files/hadeth.txt');
    List<String> hadethlist = hadethContant.split('#\r\n');
    for (int i = 0; i < hadethlist.length; i++) {
      print(hadethlist[i]);
      print('--------------');
      List<String> hadethLines = hadethlist[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethLines.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content = [];

  Hadeth({required this.title, required this.content});
}
