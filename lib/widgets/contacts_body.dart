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

  final List<AppContact> list = [
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01123456789", cName: "Evan Emran"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "My Contacts", cNumber: "01123456789", cName: "Evan Emran"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Tony Stark"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Elon Musk"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Recents", cNumber: "01123456789", cName: "Carl Pei"),

    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Anik"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Amar"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Akbar"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Anthony"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Alfred"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Arthur"),
    AppContact(cId: "0", cImage: "assets/user.png", cType: "Contacts", cNumber: "01123456789", cName: "Abuklau"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Peoples", style: AppTheme.actionBarText,),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 15,),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 8.0, right: 8.0), child: Icon(Icons.search, color: Colors.grey, size: 30,),),
            Expanded(child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Search", hintStyle: AppTheme.searchHintText),
            ))
          ],),
          SizedBox(height: 15),
          Container(width: double.infinity, color: Colors.black12, height: 1,),
          Expanded(child: ListView.builder(
            shrinkWrap: true,
            // Let the ListView know how many items it needs to build.
            itemCount: list.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            // Provide a builder function. This is where the magic happens.
            // Convert each item into a widget based on the type of item it is.
            itemBuilder: (context, index) {
              final item = list[index];

              if(index == 0){
                return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("My account", style: AppTheme.ntitleText,),))],);
              }
              else if(index == 2){
                return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("Recents", style: AppTheme.ntitleText,),))],);
              }
              else if(index == 5){
                return Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(12, 4, 0, 4),child: Text("All contacts", style: AppTheme.ntitleText,),))],);
              }
              else {
                return InkWell(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AmountPage(menu: HomeMenu.SEND_MONEY,)),
                  );
                },
                  child: Container(margin: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [
                          Image.asset(item.cImage, height: 50, width: 50, fit: BoxFit.fitWidth,),
                          const SizedBox(width: 12,),
                          Expanded(child: Column(children: [
                            Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.cName, style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                            ],),
                            Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.cNumber, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
                          ],)),
                        ],)

                        ,
                        //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                      ],
                    ),),);
              }

              /*return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );*/
            },
          ))
        ],),
      ),
    );
  }
  
}