import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/models/profile_item.dart';
import 'package:nagad_clone/models/transactions.dart';

import '../styles/AppTheme.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    Key? key, required this.item,}) : super(key: key);

  final ProfileItem item;


  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.fromLTRB(12.0, 2, 12.0, 2), color: Colors.white, child: Container(margin: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            Image.asset(item.icon, height: 20, width: 20, fit: BoxFit.fitWidth,),
            const SizedBox(width: 12,),
            Expanded(child: Text(item.title, style: AppTheme.pTitleText, textAlign: TextAlign.start,)),
            const SizedBox(width: 12,),
            item.endWidget,
          ],)

          ,
          //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
        ],
      ),),);
  }

}