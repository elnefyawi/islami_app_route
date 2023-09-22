import 'package:flutter/material.dart';
import 'package:islami_app_route_1/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String zekr = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
            child: Image.asset(
              'assets/images/sebha_logo_head.png',
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
            )),
        Container(
            child: InkWell(
                onTap: () {
                  counter++;

                  setState(() {
                    if (counter <= 33) {
                      zekr = 'الحمد لله';
                    } else if (counter > 33 && counter <= 66) {
                      zekr = 'الله اكبر';
                    } else if (counter > 66 && counter <= 99) {
                      zekr = 'سبحان الله';
                    } else {
                      zekr = 'لا الله الا الله';
                    }
                  });
                },
                child: Image.asset(
                  'assets/images/sebha_logo_body.png',
                  height: MediaQuery.of(context).size.width * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'count of tasbeh',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.39,
              right: MediaQuery.of(context).size.width * 0.39,
            ),
            padding: EdgeInsets.only(top: 30, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyTheme.primaryLight),
            child: Text(
              '$counter',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: MyTheme.primaryLight),
            child: Text(
              zekr,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: MyTheme.whiteColor),
            ),
          ),
        ),
      ],
    );
  }
}
