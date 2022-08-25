import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

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
      body: Center(child: Text("Not implemented yet!"),),
    );
  }
  
}