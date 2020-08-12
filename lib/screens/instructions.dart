import 'package:final2/constants.dart';
import 'package:flutter/material.dart';

class Instructions extends StatefulWidget {

  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        centerTitle: true,
        title: Text('Instruções')
      ),
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple[700].withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                )
              ),
              child:
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildPreventation(context),
                      SizedBox(height: 10),
                      buildHelpCard(context),
                      SizedBox(height: 10),
                      buildPreventation2(context),
                      SizedBox(height: 10),
                      buildPreventation3(context),
                      SizedBox(height: 0.0),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
Container buildPreventation(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple[700],
                  Colors.purple[500],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sempre use Máscara.\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "Nunca saia de casa sem ela.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 41,
              horizontal: 30,
              ),
            child: Icon(
              Icons.assignment,
              color: Colors.white.withOpacity(0.9),
              size: 84
              )
          ),
        ],
      ),
    );
  }

Container buildPreventation2(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 12,
              right: 20,
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink[800],
                  Colors.pink[400],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Depois de Colocar,\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "nunca toque \no tecido da máscara.",
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
              vertical: 31,
              horizontal: 30,
              ),
            child: Icon(
              Icons.assignment,
              color: Colors.white.withOpacity(0.9),
              size: 84
              )
          ),
        ],
      ),
    );
  }
Container buildHelpCard(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange[800],
                  Colors.orange[500],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Leve uma Reserva.\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "Troque ela a \ncada 2 horas.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 31,
              horizontal: 30,
              ),
            child: Icon(
              Icons.assignment,
              color: Colors.white.withOpacity(0.9),
              size: 84
              )
          ),
        ],
      ),
    );
  }
Container buildPreventation3(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo[700],
                  Colors.indigo[400],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Quando Retirar,\n",
                    style: 
                    Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "retire a máscara pelos elásticos.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 31,
              horizontal: 30,
              ),
            child: Icon(
              Icons.assignment,
              color: Colors.white.withOpacity(0.9),
              size: 84
              )
          ),
        ],
      ),
    );
  }

class PreventitonCard extends StatelessWidget {
  final Icon icon;
  final String title;
  const PreventitonCard({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style:
              Theme.of(context).textTheme.bodyText1.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
