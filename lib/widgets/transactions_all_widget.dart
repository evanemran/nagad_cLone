import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/widgets/transactions_item_widget.dart';

import '../models/transactions.dart';

class TransactionAllWidget extends StatefulWidget {
  const TransactionAllWidget({Key? key, required this.list}) : super(key: key);

  final List<Transactions> list;

  @override
  State<TransactionAllWidget> createState() => _TransactionAllWidgetState();
}

class _TransactionAllWidgetState extends State<TransactionAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: widget.list.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = widget.list[index];

          return TransactionListItem(item: item);

        },
      ),
    );
  }

}