import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/models/profile_item.dart';
import 'package:nagad_clone/widgets/profile_item_widget.dart';

import '../styles/AppTheme.dart';

List<ProfileItem> generalList = [
  ProfileItem(icon: "assets/ic_language.png", title: "Language", endWidget: const Text("English")),
  ProfileItem(icon: "assets/ic_account_type.png", title: "Account Type", endWidget: const Text("Regular")),
  ProfileItem(icon: "assets/ic_offers.png", title: "I Want Profit", endWidget: const Text("NO")),
  ProfileItem(icon: "assets/ic_pin.png", title: "Change PIN", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_mno.png", title: "Change Mobile Operator", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_kyc_icon.png", title: "Re-submit KYC", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_merchant_list.png", title: "Trusted Merchants", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
];

List<ProfileItem> moreInfoList = [
  ProfileItem(icon: "assets/ic_policy.png", title: "Privacy Policy", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_faq.png", title: "FAQ", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_storelocator.png", title: "Store Locator", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_about.png", title: "About", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_facebook.png", title: "Nagad Page", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_website.png", title: "Website", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
  ProfileItem(icon: "assets/ic_logout.png", title: "Sign out", endWidget: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey,)),
];

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          flexibleSpace: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/dashboard_bg.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12, 12, 0, 6),
                  child: Text("My Nagad", style: AppTheme.actionBarText,),))],),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 12.0, bottom: 4.0),
                        child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const AssetImage('assets/anonymous.png'),
                        ),
                      ),
                      const SizedBox(width: 14.0),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          //User Name
                          Text(
                            'Evan Emran',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Text(
                            '01873365544',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          //Button

                        ],
                      )),
                      const Padding(
                        padding: EdgeInsets.only(top: 0.0, right: 12.0),
                        child: InkWell(child: Icon(Icons.edit, color: Colors.white, size: 20,),),
                      )
                    ],
                  )
                ],),
              ),
            ),
          ),
        ),),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
        Row(children: const [Expanded(child: Padding(padding: EdgeInsets.all(12),child: Text("General"),))],),
        ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: generalList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = generalList[index];

            return ProfileListItem(item: item);

          },
        ),
          Row(children: const [Expanded(child: Padding(padding: EdgeInsets.all(12),child: Text("More Information"),))],),
        ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: moreInfoList.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = moreInfoList[index];

            return ProfileListItem(item: item);

          },
        )
      ],),),
    );
  }
  
}