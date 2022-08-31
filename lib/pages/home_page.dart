import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/widgets/home_body_widget.dart';
import 'package:nagad_clone/widgets/transaction_widget.dart';

import '../enums/home_menu.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/contacts_body.dart';
import '../widgets/home_menu_widget.dart';
import '../widgets/profile_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  Color item1color = Colors.deepOrange;
  Color item2color = Colors.grey;
  Color item3color = Colors.grey;
  Color item4color = Colors.grey;

  static const List<Widget> _bottomMenu = <Widget>[
    HomeBody(),
    TransactionBody(),
    ContactsBody(),
    ProfileBody()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: _bottomMenu.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/ic_home_active.png"), color: item1color, size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/ic_transactions_active.png"), color: item2color, size: 24,),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/ic_people.png"), color: item3color, size: 24,),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/ic_my_nagad.png"), color: item4color, size: 24,),
            label: 'My Nagad',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.deepOrange),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch(index) {
        case 0:
          item1color = Colors.deepOrange;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 1:
          item1color = Colors.grey;
          item2color = Colors.deepOrange;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 2:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.deepOrange;
          item4color = Colors.grey;
          break;
        case 3:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.deepOrange;
          break;
      }
    });
  }
}