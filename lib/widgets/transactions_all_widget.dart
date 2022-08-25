import 'package:flutter/cupertino.dart';

class TransactionAllWidget extends StatefulWidget {
  const TransactionAllWidget({Key? key}) : super(key: key);

  @override
  State<TransactionAllWidget> createState() => _TransactionAllWidgetState();
}

class _TransactionAllWidgetState extends State<TransactionAllWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("All Transactions"),
    );
  }

}