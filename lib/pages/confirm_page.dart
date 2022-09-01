import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/pages/success_page.dart';

import '../enums/home_menu.dart';
import '../styles/AppTheme.dart';
import '../widgets/circular_button.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> with SingleTickerProviderStateMixin{
  
  var btnVisibility = true;
  var loaderVisibility = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    _controller.addListener(() {
      setState(() {
        if(_controller.isCompleted){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SuccessPage(menu: HomeMenu.SEND_MONEY,)),
          );
          _controller.reset();
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
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

              const SizedBox(height: 16,),
              //Amount
              Card(color: Colors.white, elevation: 2, child: Column(children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 24, 0, 24), child: Row(children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('500.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,), Text('AMOUNT', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14),)
                  ],),)),
                  Container(width: 1, height: 60, color: Colors.black45,),
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('5.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,),  Text('CHARGE', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14))
                  ],),)),
                ],),),

                Container(color: Colors.grey, width: double.infinity, height: 1, margin: EdgeInsets.fromLTRB(12, 0, 12, 0),),

                Padding(padding: EdgeInsets.fromLTRB(0, 24, 0, 24), child: Row(children: [
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('505.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,), Text('TOTAL', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14),)
                  ],),)),
                  Container(width: 1, height: 60, color: Colors.black45,),
                  Expanded(child: Padding(padding: EdgeInsets.all(8), child: Column(children: const [
                    Text('6995.00Tk.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)), SizedBox(height: 4,),  Text('BALANCE', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.normal, fontSize: 14))
                  ],),)),
                ],),),
              ],),),

              const SizedBox(height: 30,),

              Visibility(visible: btnVisibility,child: Column(
                children: [
                  CircularButton(
                    onComplete: () {
                      setState(() {
                        btnVisibility = false;
                        loaderVisibility = true;
                        _controller.forward();
                      });
                    },
                  ),

                  const SizedBox(height: 20,),
                  Row(children: const [Expanded(child: Text('TAP AND HOLD TO CONFIRM', style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,))],)
                ],
              ),),
              
              Visibility(visible: loaderVisibility,child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: Image.asset("assets/ic_tx_progress.png", width: 80, height: 80,),
              ),)
              
            ],
          ),
        )
    );
  }
}