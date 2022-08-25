import 'package:flutter/cupertino.dart';

class TransactionInWidget extends StatefulWidget {
  const TransactionInWidget({Key? key}) : super(key: key);

  @override
  State<TransactionInWidget> createState() => _TransactionInWidgetState();
}

class _TransactionInWidgetState extends State<TransactionInWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("In Transactions"),
    );
  }

}