import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class ContactsBody extends StatefulWidget {
  const ContactsBody({Key? key}) : super(key: key);

  @override
  State<ContactsBody> createState() => _ContactsBodyState();
}

class _ContactsBodyState extends State<ContactsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("People", style: AppTheme.actionBarText,),
      ),
      body: Center(child: Text("Not implemented yet!"),),
    );
  }
  
}