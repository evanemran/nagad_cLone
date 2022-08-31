import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/home_menu.dart';
import '../styles/AppTheme.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final referenceTextController = TextEditingController();
  final pinTextController = TextEditingController();
  Color btnColor = Colors.white;
  Color btnText = Colors.black45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.menu.title, style: AppTheme.actionBarText, textAlign: TextAlign.center,),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              //TO
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Padding(padding: const EdgeInsets.fromLTRB(24, 12, 12, 12), child: Row(children: [
                  Image.asset("assets/user.png", height: 50, width: 50, fit: BoxFit.fitWidth,),
                  const SizedBox(width: 12,),
                  Expanded(child: Column(children: [
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("Ryan Reynolds", style: AppTheme.ntitleText, textAlign: TextAlign.start,),)),
                    ],),
                    Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text("01123456789", style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],),
                  ],)),
                ],),)
              ],),),

              //Amount
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Row(children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('500.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,), Text('AMOUNT', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14),)
                  ],),)),
                  Container(width: 1, height: 50, color: Colors.black45,),
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('5.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,),  Text('CHARGE', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14))
                  ],),)),
                ],),),


                Padding(padding: EdgeInsets.all(12.0), child: Center(child: Row(children: [
                  Padding(padding: EdgeInsets.only(right: 10), child: Image.asset("assets/ic_transactions_out_taka.png", color: Colors.deepOrange, height: 24, width: 24,),),
                  Expanded(child: TextField(
                    controller: referenceTextController,
                    onChanged: (text) {
                      if(referenceTextController.text.trim()==""){
                        setState(() {
                          btnColor = Colors.white;
                          btnText = Colors.black45;
                        });
                      }
                      else{
                        setState(() {
                          btnColor = Colors.deepOrange;
                          btnText = Colors.white;
                        });
                      }
                    },
                    decoration: InputDecoration(hintText: "Amount", hintStyle: AppTheme.amtHintText),
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.transparent,
                    textAlign: TextAlign.start,
                    style: AppTheme.amtText,
                  ))
                ],),),),
                Padding(padding: EdgeInsets.all(12.0), child: Center(child: Row(children: [
                  Padding(padding: EdgeInsets.only(right: 10), child: Image.asset("assets/ic_transactions_out_taka.png", color: Colors.deepOrange, height: 24, width: 24,),),
                  Expanded(child: TextField(
                    controller: pinTextController,
                    onChanged: (text) {
                      if(pinTextController.text.trim()==""){
                        setState(() {
                          btnColor = Colors.white;
                          btnText = Colors.black45;
                        });
                      }
                      else{
                        setState(() {
                          btnColor = Colors.deepOrange;
                          btnText = Colors.white;
                        });
                      }
                    },
                    decoration: InputDecoration(hintText: "Amount", hintStyle: AppTheme.amtHintText),
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.transparent,
                    textAlign: TextAlign.start,
                    style: AppTheme.amtText,
                  ))
                ],),),),




                /*Container(width: double.infinity, height: 1, color: Colors.black12,),
                Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,12,12,8), child: Text("Reference", style: AppTheme.ntitleText,),)), Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0), child: Text("0/50",),)],),
                Padding(padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 16.0), child: TextField(
                  controller: referenceTextController,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.transparent,
                  textAlign: TextAlign.start,
                  style: AppTheme.nbodyText,
                  decoration: InputDecoration.collapsed(hintText: "Tap to add a note", hintStyle: AppTheme.nbodyText,),
                ),),
                Container(width: double.infinity, height: 1, color: Colors.black12,),
                Padding(padding: const EdgeInsets.fromLTRB(12, 24, 12, 24), child: Row(children: [
                  const Icon(Icons.lock_sharp, color: Colors.deepOrange,),
                  Expanded(child: TextField(
                    controller: pinTextController,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.transparent,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: AppTheme.amtHintText,
                    decoration: InputDecoration.collapsed(hintText: "Enter PIN", hintStyle: AppTheme.amtHintText,),
                  )),
                  InkWell(onTap: () {
                    *//*showDialog(context: context,
                        *//**//*builder: (context) => DialogAnim()*//**//*
                        builder: (context) => const Dialog(
                          insetPadding: EdgeInsets.all(20),
                          child: DialogWidget(),
                        ));*//*
                  }, child: const Icon(Icons.arrow_forward, color: Colors.black45, size: 32,),)
                ],),)*/
              ],),),
            ],
          ),
        )
    );
  }
}