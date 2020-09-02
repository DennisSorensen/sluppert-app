import 'package:flutter/material.dart';
import 'package:sluppertapp/models/sluppert_data.dart';
import 'package:sluppertapp/models/sluppert_model.dart';
import 'package:sluppertapp/widgets/donation_button.dart';
import 'package:provider/provider.dart';
import 'package:sluppertapp/models/sluppert_data.dart';

class SluppertListTile extends StatelessWidget {
  final int sluppertIndex;

  SluppertListTile({@required this.sluppertIndex});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(Provider.of<SluppertData>(context)
            .sluppertAtIndex(sluppertIndex)
            .name),
        subtitle: Text(Provider.of<SluppertData>(context)
            .sluppertAtIndex(sluppertIndex)
            .donationTotal
            .toString()),
        leading: CircleAvatar(
          backgroundImage: AssetImage(Provider.of<SluppertData>(context)
              .sluppertAtIndex(sluppertIndex)
              .assetImage),
        ),
        trailing: DonationButton(
          onTap: () {
            //Vi skal have fat i provideren
            //todo: vi får wn fejl fordi vi ikke skriver listen false her fordi donation knappen ikke bruger provider
            Provider.of<SluppertData>(context, listen: false).receiveDonation(
              donation: 100,
              atIndex: sluppertIndex,
            );
            print('Trykket på celle');
          },
        ),
      ),
    );
  }
}
