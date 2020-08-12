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
       body:
       SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColorRed.withOpacity(0.25),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                )
              ),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: <Widget>[
                  InfoCard(
                    fontSize: (8),
                    title: "Confirmados",
                    iconColor: Color(0xFFFF8C00),
                    effectedNum: 397,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Total Óbitos",
                    iconColor: Color(0xFFFF2D55),
                    effectedNum: 1,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Recuperados",
                    iconColor: Color(0xFF50E3C2),
                    effectedNum: 167,
                    press: () {},
                  ),
                  InfoCard(
                    title: "Novos Casos",
                    iconColor: Color(0xFF5856D6),
                    effectedNum: 73,
                    press: () {},
                  ),
                ],
              ),
            ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 192,
                child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .463,
                      top: 26,
                      right: 20,
                  ),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.red[300],
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Ligue Para o \nDisk Covid!\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(color: Colors.white),
                              ),
                              TextSpan(
                                text: "Sintomas? Ligue:\n46 99139-5116 ou \n46 99105-8846",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 23,
                          horizontal: 37,
                          ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.white.withOpacity(0.9),
                          size: 100
                          )),
                        ],
                      )
                    ),
                  ],
                )),
              ]
            ))
          );
        }
      }
