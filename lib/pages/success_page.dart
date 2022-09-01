import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/home_menu.dart';
import '../styles/AppTheme.dart';
import 'confirm_page.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.all(12),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.deepOrange,
                            width: 4
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(60))
                    ),
                    child: Image.asset("assets/img_tick.png", height: 60, width: 60,),
                  ),

                  SizedBox(height: 20,),
                  Row(children: const [Expanded(child: Text('Send Money Successful!', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,))],),

                  SizedBox(height: 20,),
                  Row(children: const [Expanded(child: Text('Evan Emran', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16), textAlign: TextAlign.center,))],),
                  SizedBox(height: 10,),
                  Row(children: const [Expanded(child: Text('01123456789', style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16), textAlign: TextAlign.center,))],),

                  SizedBox(height: 20,),
                  Container(width: double.infinity, color: Colors.black12, height: 1,),
                  SizedBox(height: 10,),

                  Padding(padding: EdgeInsets.all(8), child: Row(children: [Text("Transaction ID", style: TextStyle(color: Colors.deepOrange, fontSize: 16),), Expanded(child: Text("787JK4208", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.end,))],),),
                  Padding(padding: EdgeInsets.all(8), child: Row(children: [Text("Amount", style: TextStyle(color: Colors.deepOrange, fontSize: 16),), Expanded(child: Text("500.00Tk.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.end,))],),),
                  Padding(padding: EdgeInsets.all(8), child: Row(children: [Text("Charge", style: TextStyle(color: Colors.deepOrange, fontSize: 16),), Expanded(child: Text("5.00Tk.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.end,))],),),
                  Padding(padding: EdgeInsets.all(8), child: Row(children: [Text("Total", style: TextStyle(color: Colors.deepOrange, fontSize: 16),), Expanded(child: Text("505.00Tk.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.end,))],),),
                  Padding(padding: EdgeInsets.all(8), child: Row(children: [Text("Time", style: TextStyle(color: Colors.deepOrange, fontSize: 16),), Expanded(child: Text("01 Sep 2022, 08:23 PM", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.end,))],),),

                  SizedBox(height: 20,),
                  Container(width: double.infinity, color: Colors.black12, height: 1,),
                  SizedBox(height: 10,),

                  Row(children: [
                    Expanded(child: Row(children: [Image.asset("assets/ic_phone.png", height: 24, width: 24,), SizedBox(width: 10,) , Text("Call", style: TextStyle(color: Colors.deepOrange, fontSize: 16,),)],)),
                    Expanded(child: Row(children: [Image.asset("assets/ic_message.png", height: 24, width: 24,), SizedBox(width: 10,) , Text("Call", style: TextStyle(color: Colors.deepOrange, fontSize: 16,),)],)),
                  ],),

                  SizedBox(height: 20,),
                  Container(width: double.infinity, color: Colors.black12, height: 1,),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        )
    );
  }
}