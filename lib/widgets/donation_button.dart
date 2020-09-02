import 'package:flutter/material.dart';

class DonationButton extends StatelessWidget {
  final Function onTap;

  DonationButton({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FlatButton(
        child: Text(
          'Donate',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          onTap();
          print('donation');
        },
      ),
    );
  }
}
