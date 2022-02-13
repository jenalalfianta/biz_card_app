import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BizCard());

class BizCard extends StatefulWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  _BizCardState createState() => _BizCardState();
}

class _BizCardState extends State<BizCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.purple.shade900,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              _getCard(),
              _getAvatar(),
            ],
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

Container _getAvatar() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white60,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      image: DecorationImage(
        image: new AssetImage('assets/images/jenal.jpg'),
      ),
    ),
    alignment: Alignment.topCenter,
  );
}

Container _getCard() {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: Colors.purple.shade900,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Jenal Alfianta B",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 18.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ' @jenalalfianta',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.globe,
                  color: Colors.white,
                  size: 18.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ' jenalalfianta.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
