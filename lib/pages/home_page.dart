import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/home_menu.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/home_menu_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 184) / 2;
    final double itemWidth = size.width / 2;

    List<HomeMenu> homeMenuList = [
      HomeMenu.SEND_MONEY,
      HomeMenu.CASH_OUT,
      HomeMenu.MOBILE_RECHARGE,
      HomeMenu.ADD_MONEY,
      HomeMenu.TRANSFER_MONEY,
      HomeMenu.INSURANCE,
      HomeMenu.NAGAD_MELA,
    ];

    List<HomeMenu> paymentList = [
      HomeMenu.MERCHANT_PAY,
      HomeMenu.BILL_PAY,
      HomeMenu.EMI_PAY,
      HomeMenu.DONATION,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: [const Expanded(child: Padding(padding: EdgeInsets.only(left: 12.0), child: Text('Services'),)),],),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
            margin: EdgeInsets.only(bottom: 0.0),
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 4,
              childAspectRatio: (itemWidth / itemHeight),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // Generate 100 widgets that display their index in the List.
              children: List.generate(homeMenuList.length, (index) {
                return Center(
                  child: InkWell(child: MenuWidget(title: homeMenuList[index].title, image: homeMenuList[index].icon),
                    onTap: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage(menu: homeMenuList[index],)),
                      );*/
                    },),
                );
              }),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: [const Expanded(child: Padding(padding: EdgeInsets.only(left: 12.0), child: Text('Payment'),)),],),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
            margin: EdgeInsets.only(bottom: 0.0),
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 4,
              childAspectRatio: (itemWidth / itemHeight),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // Generate 100 widgets that display their index in the List.
              children: List.generate(paymentList.length, (index) {
                return Center(
                  child: InkWell(child: MenuWidget(title: paymentList[index].title, image: paymentList[index].icon),
                    onTap: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage(menu: homeMenuList[index],)),
                      );*/
                    },),
                );
              }),
            ),
          ),
        ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_nagad.png"), color: Colors.deepOrange, size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sticky_note_2_outlined, color: Colors.grey),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Colors.grey),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes, color: Colors.grey),
            label: 'My Nagad',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.deepOrange),
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}