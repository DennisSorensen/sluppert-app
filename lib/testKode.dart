import 'package:flutter/material.dart';

void testKode() {
  print('----------START----------');

  int etHeltal = 1234;
  print(etHeltal);

  List<String> navne = ['Henrik', 'lars', 'Belinda', 'Birgitte'];
  print(navne);
  print('Der er ${navne.length} navne i listen');

  navne.add('Søren');
  print(navne);
  print(navne.first);
  print(navne.last);
  //søge i listen
  print(
    navne.indexOf('lars'),
  );

  print(navne[3]);

  navne.clear();
  print(navne.length);

  //Dict
  Map<String, int> dictionary = {'Henrik': 49, 'Lars': 34, 'Belinda': 27};
  print(dictionary);
  print(dictionary.length);
  print(dictionary['Lars']);

  //Der kan kun være en instans af en key i settet
  Set<String> skurke = Set();
  skurke.add('Donald');
  print(skurke.length);
  skurke.add('Xi');
  print(skurke.length);
  print(skurke);
  skurke.add('Mette');
  print(skurke.length);

  //Nu kloner vi donald
  skurke.add('Donald');
  print(skurke.length);

  //DataTime og Duration(periode) svare til TimeInterval
  DateTime ligenu = DateTime.now();
  print(ligenu);
  print(
    ligenu.add(
      Duration(hours: 12),
    ),
  );

  Uri enURL =
      Uri.parse('https://bidblog.dk/lektion-18/tirsdag?parm1=nr1&parm2=nr2');
  print(enURL);
  //Vi kan spørge på dele af url
  print(enURL.scheme);
  print(enURL.path);
  print(enURL.pathSegments.last);

  //få parametre til vores url
  print(enURL.queryParameters);

  print('----------SLUT ----------');
}

abstract class Skabning {
  void sigHej() {
    print('Hej');
  }

  int maxLeveAlder();
}

abstract class MenneskeDelegate {
  void slaaGraes();
  void SpisMad();
}

class EnMand extends Skabning implements MenneskeDelegate {
  bool _harEnPenis = true;

  bool get harEnPenis => _harEnPenis;

  @override
  void sigHej() {
    print('Hej fra Mand');
  }

  void _vaskOp() {
    print('En mand vasker op');
  }

  @override
  int maxLeveAlder() {
    return 100;
  }

  @override
  void SpisMad() {
    // TODO: implement SpisMad
  }

  @override
  void slaaGraes() {
    // TODO: implement slaaGraes
  }
}

void testClasser() {
  EnMand enSkabning = EnMand();

  enSkabning.sigHej();
  //enSkabning.vaskOp();
  print(enSkabning.harEnPenis);

  Maaneder enMaaned = Maaneder.maj;
  print(enMaaned);
  print(enMaaned.index);

  print(MineFarver.brun);
  print(MineFarver.hvid);
}

enum Maaneder { jan, feb, mar, apr, maj, jun, jul, aug, sep, okt, nov, dec }

class MineFarver {
  static const Color brun = Colors.brown;
  static const Color hvid = Colors.white;
  static const Color graa = Color(0xff808080);
//0x = der kommer en hex værdi
//ff = alpha kanal
//resten = farven

}

void enFunktionUdenParameter() {}

//default værdier skal stå i hårde klammer til sidst
void enFunktionMedDefaultParameter(String mitNavn, [int minAlder = 24]) {
  print('$mitNavn er $minAlder år');
}

void enFunktionMedValgfrieParametre({String mitNavn, @required int minAlder}) {
  print('$mitNavn er $minAlder år');
}

void enFunktion2(int hoejde, {int bredde}) {}
