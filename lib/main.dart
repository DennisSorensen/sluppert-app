import 'package:flutter/material.dart';
import 'testKode.dart';
import 'package:sluppertapp/SluppertCard.dart';

void main() => runApp(SluppertApp());

class SluppertApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //testKode();
    testClasser();
    enFunktionMedDefaultParameter('Dennis');
    enFunktionMedDefaultParameter('Dennis', 20);
    enFunktionMedValgfrieParametre(
        minAlder: 24,
        mitNavn: 'Dennis'); //Med valgfrie parametre skan man blande dem
    enFunktion2(3);
    enFunktionMedValgfrieParametre(minAlder: 24);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sluppert App',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SluppertCard(),
      ),
    );
  }
}
