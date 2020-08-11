import 'package:flutter/material.dart';
import 'package:final2/constants.dart';
import 'package:final2/widgets/info_card.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Página Inicial')
      ),
       body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColorRed.withOpacity(0.03),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: <Widget>[
                  InfoCard(
                    fontSize: (8),
                    title: "Confirmados",
                    iconColor: Color(0xFFFF8C00),
                    effectedNum: 324,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Óbitos",
                    iconColor: Color(0xFFFF2D55),
                    effectedNum: 1,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Recuperados",
                    iconColor: Color(0xFF50E3C2),
                    effectedNum: 133,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Novos Casos",
                    iconColor: Color(0xFF5856D6),
                    effectedNum: 27,
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
