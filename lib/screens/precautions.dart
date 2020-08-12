import 'package:final2/constants.dart';
import 'package:flutter/material.dart';

class Precautions extends StatefulWidget {

  @override
  _Precautions createState() => _Precautions();
}

class _Precautions extends State<Precautions> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('Precauções')
      ),
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15, top: 17, right: 15, bottom: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigo[700].withOpacity(0.4),
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
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
Container buildPreventation(BuildContext context) {
    return Container(
      height: 150,
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
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo,
                  Colors.indigo[400],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Lave Bem \nas Mãos.\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "Lave toda vez \nque puder.",
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
              vertical: 44,
              horizontal: 33,
              ),
            child: Icon(
              Icons.event_available,
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
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              // left side padding is 40% of total width
              left: MediaQuery.of(context).size.width * .4,
              top: 15,
              right: 20,
            ),
            height: 130,
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
                    text: "Não Abrace, Aperte Mãos,",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "\nou qualquer \ncumprimento que envolva contato fisico.",
                    style: TextStyle(
                      fontSize: 12.6,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 44,
              horizontal: 33,
              ),
            child: Icon(
              Icons.event_available,
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
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              // left side padding is 40% of total width
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal[500],
                  Colors.teal[300],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Passe Álcool \nem Gel,\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "quando não puder \nlavar as mãos.",
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
              vertical: 44,
              horizontal: 33,
              ),
            child: Icon(
              Icons.event_available,
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
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              // left side padding is 40% of total width
              left: MediaQuery.of(context).size.width * .4,
              top: 15,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink[800],
                  Colors.pink[500],
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Mantenha Distância.",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "\nNo mínimo 2 metros de cada pessoa",
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
              vertical: 44,
              horizontal: 33,
              ),
            child: Icon(
              Icons.event_available,
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