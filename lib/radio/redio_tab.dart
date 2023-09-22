import 'package:flutter/material.dart';

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
              'اذاعة القران الكريم',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            )),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.skip_previous,
              size: 35,
            ),
            Icon(Icons.play_arrow, size: 50),
            Icon(
              Icons.skip_next,
              size: 35,
            ),
          ],
        )
      ],
    );
  }
}
