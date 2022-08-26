import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/models/transactions.dart';

import '../styles/AppTheme.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({
    Key? key, required this.item,}) : super(key: key);

  final Transactions item;


  @override
  Widget build(BuildContext context) {
    return Card(margin: const EdgeInsets.fromLTRB(12.0, 6, 12.0, 6), elevation: 2.0, color: Colors.white, child: Container(margin: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            Image.asset(item.tIcon, height: 20, width: 20, fit: BoxFit.fitWidth,),
            const SizedBox(width: 12,),
            Expanded(child: Column(children: [
              Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.tTitle, style: AppTheme.tTitleText, textAlign: TextAlign.start,),)),
                Text(item.tAmt, style: AppTheme.tAmtText, textAlign: TextAlign.start,)],),
              Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.tBody, style: AppTheme.tBodyText, textAlign: TextAlign.start,),)),
                Text(item.tTime, style: AppTheme.tTimeText, textAlign: TextAlign.start,)],),
            ],)),
          ],)

          ,
          //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
        ],
      ),),);
  }

}