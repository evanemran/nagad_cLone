import 'package:flutter/cupertino.dart';

class ProfileItem {
  String icon = "";
  String title = "";
  Widget endWidget = Text("N/A");

  ProfileItem({required this.icon, required this.title, required this.endWidget});
}