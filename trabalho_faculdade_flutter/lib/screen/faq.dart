import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('F.A.Q'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildText(context),
              ],
            ),
          ),
        ),
      );

  Widget buildText(BuildContext context) => ExpansionTile(
        title: Text(
          'Como você está?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'R: mal pacaraio',
              style: TextStyle(fontSize: 18, height: 1.4),
              textAlign: TextAlign.left,
            ),
          )
        ],
      );
}
