import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/pages/pin_page.dart';

import '../enums/home_menu.dart';
import '../styles/AppTheme.dart';

class AmountPage extends StatefulWidget {
  const AmountPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<AmountPage> createState() => _AmountPageState();
}

class _AmountPageState extends State<AmountPage> {
  final amountTextController = TextEditingController();
  Color amtConfirmColor = Colors.black45;

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
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              //TO
              Card(margin: EdgeInsets.all(12.0),color: Colors.white, elevation: 2, child: Column(children: [
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

              Padding(padding: EdgeInsets.all(12.0), child: Center(child: Row(children: [
                Padding(padding: EdgeInsets.only(right: 10), child: Image.asset("assets/ic_transactions_out_taka.png", color: Colors.deepOrange, height: 24, width: 24,),),
                Expanded(child: TextField(
                  controller: amountTextController,
                  onChanged: (text) {
                    if(amountTextController.text.trim()==""){
                      setState(() {
                        amtConfirmColor = Colors.black45;
                        btnColor = Colors.white;
                        btnText = Colors.black45;
                      });
                    }
                    else{
                      setState(() {
                        amtConfirmColor = Colors.deepOrange;
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

              Padding(padding: EdgeInsets.all(12), child: Center(child: Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(12,8,0,12), child: Text("Available balance: ৳7500.25", style: AppTheme.avlAmtText2, textAlign: TextAlign.center,),)),
              ],),),),


              Container(
                margin: EdgeInsets.fromLTRB(36,12,36,12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: btnColor,
                    border: Border.all(
                        color: Colors.deepOrange,
                        width: 2
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: InkWell(child: Padding(padding: EdgeInsets.all(8), child: Text("Next", style: TextStyle(color: btnText, fontSize: 18), textAlign: TextAlign.center,),),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PinPage(menu: HomeMenu.SEND_MONEY,)),
                    );
                  },),),



            ],
          ),
        )
    );
  }
}