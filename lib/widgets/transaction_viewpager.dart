import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/widgets/transactions_all_widget.dart';
import 'package:nagad_clone/widgets/transactions_in_widget.dart';
import 'package:nagad_clone/widgets/transactions_out_widget.dart';

import '../styles/AppTheme.dart';

class TransactionViewpager extends StatefulWidget {
  const TransactionViewpager({Key? key}) : super(key: key);

  @override
  State<TransactionViewpager> createState() => _TransactionViewpagerState();
}

class _TransactionViewpagerState extends State<TransactionViewpager> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: TabBar(
          labelColor: Colors.deepOrange,
          unselectedLabelColor: Colors.black87,
          indicatorColor: Colors.deepOrange,
          tabs: [
            Tab(text: "ALL",),
            Tab(text: "IN",),
            Tab(text: "OUT",),
          ],
        ),
        body: TabBarView(
          children: [
            TransactionAllWidget(),
            TransactionInWidget(),
            TransactionOutWidget(),
          ],
        ),
      ),
    );
  }
  
}