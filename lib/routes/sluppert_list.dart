import 'package:flutter/material.dart';
import 'package:sluppertapp/models/sluppert_data.dart';
import 'package:sluppertapp/models/sluppert_model.dart';
import 'package:sluppertapp/widgets/sluppert_list_tile.dart';
import 'package:provider/provider.dart';

class SluppertList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: Provider.of<SluppertData>(context).numberOfSlupperter,
        itemBuilder: (context, index) => SluppertListTile(
          sluppertIndex: index,
        ),
      ),
    );
  }
}
