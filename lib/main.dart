import 'package:flutter/material.dart';
import 'package:sluppertapp/models/sluppert_data.dart';
import 'package:sluppertapp/routes/sluppert_list.dart';
import 'package:provider/provider.dart';

void main() => runApp(SluppertApp());

class SluppertApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Jeg wrapper yderste app i provideren, og i create laver jeg instans af det data der skal stilles til rådighed
    return ChangeNotifierProvider<SluppertData>(
      create: (context) => SluppertData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Sluppert App',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: SluppertList(),
        ),
      ),
    );
  }
}
