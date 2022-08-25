import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/styles/AppTheme.dart';


class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppBarWidgetState();

}

class AppBarWidgetState extends State<AppBarWidget> {
  final GlobalKey<AppBarWidgetState> appBar_key = new GlobalKey<AppBarWidgetState>();
  bool _isAnimation = false;
  bool _isBalanceShown = false;
  bool _isBalance = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: appBar_key,
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
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/nagad_label.png", height: 36, fit: BoxFit.fitHeight,),
                  Text("ডাক বিভাগের ডিজিটাল লেনদেন", style: AppTheme.appbarTagText,),
                  Expanded(child: Center(
                    child: InkWell(
                        onTap: animate,
                        child: Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Stack(alignment: Alignment.center, children: [
                              //Amount
                              AnimatedOpacity(
                                  opacity: _isBalanceShown ? 1 : 0,
                                  duration: Duration(milliseconds: 500),
                                  child: const Text('৳7500.25',
                                      style: TextStyle(
                                          color: Colors.deepOrange, fontSize: 14, fontWeight: FontWeight.bold)
                                  , textAlign: TextAlign.center,)),

                              //Balance
                              AnimatedOpacity(
                                  opacity: _isBalance ? 1 : 0,
                                  duration: const Duration(milliseconds: 300),
                                  child:  Row(children: const [
                                    Expanded(child:
                                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Text('ব্যালেন্স জানতে ট্যাপ করুন',
                                      style: TextStyle(
                                          color: Colors.deepOrange, fontSize: 12, fontWeight: FontWeight.bold)
                                      , textAlign: TextAlign.end,),),)
                                  ],)),

                              //Circle
                              AnimatedPositioned(
                                  duration: const Duration(milliseconds: 1100),
                                  left: _isAnimation == false ? 5 : 175,
                                  curve: Curves.fastOutSlowIn,
                                  child: Container(
                                      height: 20,
                                      width: 20,
                                      // padding: const EdgeInsets.only(bottom: 4),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange,
                                          borderRadius: BorderRadius.circular(50)),
                                      child: const FittedBox(
                                          child: Text('৳',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17)))))
                            ]))),
                  ))
                ],
              ),)
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 0.0, right: 12.0),
          child: Icon(Icons.notification_important_outlined, color: Colors.white,),
          /*child: Image.asset('assets/ic_notification.png', height: 26, width: 26, fit: BoxFit.fitWidth,),*/
        )
      ],
    );
  }

  void animate() async {
    _isAnimation = true;
    _isBalance = false;
    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
            () => setState(() => _isBalanceShown = true));
    await Future.delayed(
        Duration(seconds: 3), () => setState(() => _isBalanceShown = false));
    await Future.delayed(Duration(milliseconds: 200),
            () => setState(() => _isAnimation = false));
    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBalance = true));
  }

}
