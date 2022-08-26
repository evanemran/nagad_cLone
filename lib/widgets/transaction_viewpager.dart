import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/widgets/transactions_all_widget.dart';
import 'package:nagad_clone/widgets/transactions_in_widget.dart';
import 'package:nagad_clone/widgets/transactions_out_widget.dart';

import '../models/transactions.dart';
import '../styles/AppTheme.dart';

class TransactionViewpager extends StatefulWidget {
  const TransactionViewpager({Key? key}) : super(key: key);

  @override
  State<TransactionViewpager> createState() => _TransactionViewpagerState();
}

class _TransactionViewpagerState extends State<TransactionViewpager> {
  List<Transactions> allTransactionList = [
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "3000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "3000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Received Money", tBody: "Anik", tTime: "Aug 12, 11:27 AM", tAmt: "2050", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Top-up", tBody: "Robi", tTime: "Aug 12, 11:27 AM", tAmt: "100", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "5000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "300", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "1500", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "3000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
  ];

  List<Transactions> inTransactionList = [
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Received Money", tBody: "Anik", tTime: "Aug 12, 11:27 AM", tAmt: "2050", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "5000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "300", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "1500", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_in.png", tTitle: "Cash In", tBody: "Sk Telecoms", tTime: "Aug 12, 11:27 AM", tAmt: "3000", tAmtIcon: "assets/ic_transactions_in_taka.png", tType: "IN"),
  ];

  List<Transactions> outTransactionList = [
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
    Transactions(tId: 0, tIcon: "assets/ic_transactions_out.png", tTitle: "Payment", tBody: "Star Cineplex", tTime: "Aug 13, 10:29 PM", tAmt: "1200", tAmtIcon: "assets/ic_transactions_out_taka.png", tType: "OUT"),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const TabBar(
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
            TransactionAllWidget(list: allTransactionList,),
            TransactionAllWidget(list: inTransactionList,),
            TransactionAllWidget(list: outTransactionList,),
          ],
        ),
      ),
    );
  }
  
}