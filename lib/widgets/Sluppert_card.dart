import 'package:flutter/material.dart';
import 'package:sluppertapp/donald_portrait.dart';

class SluppertCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 200,
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Donald.jpg'),
                  radius: 75,
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: RaisedButton(
                  child: Text(
                    'Hello World',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DonaldPortrait(),
                      ),
                    );
                    print('Hello World');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
