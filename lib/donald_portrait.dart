import 'package:flutter/material.dart';

class DonaldPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/GreatTrump.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
