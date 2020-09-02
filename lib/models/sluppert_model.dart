import 'package:flutter/material.dart';

class SluppertModel {
  String name = '';
  double donationTotal = 0.0;
  String assetImage = '';

  SluppertModel(
      {@required this.name,
      this.donationTotal = 0.0,
      @required this.assetImage});

  //Statisk demodata funktion der giver os alt data
  static List<SluppertModel> demoData() {
    List<SluppertModel> slupperter = [
      SluppertModel(name: 'Donald Trump', assetImage: 'images/Donald.jpg'),
      SluppertModel(name: 'Mor Mette', assetImage: 'images/Mette.jpg'),
      SluppertModel(name: 'Putin', assetImage: 'images/Putin.jpg'),
      SluppertModel(name: 'Xi', assetImage: 'images/Xi.jpg'),
    ];
    return slupperter;
  }
}
