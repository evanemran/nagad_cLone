import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/home_menu.dart';
import '../models/contact.dart';
import '../pages/amount_page.dart';
import '../styles/AppTheme.dart';

class ContactsBody extends StatefulWidget {
  const ContactsBody({Key? key}) : super(key: key);

  @override
  State<ContactsBody> createState() => _ContactsBodyState();
}

class _ContactsBodyState extends State<ContactsBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("N/A"),
    );
  }
  
}