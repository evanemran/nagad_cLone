import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_clone/widgets/home_body_widget.dart';
import 'package:nagad_clone/widgets/transaction_widget.dart';

import '../enums/home_menu.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/contacts_widget.dart';
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_home_active.png"), color: Colors.grey, size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_transactions_active.png"), color: Colors.grey, size: 24,),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_people.png"), color: Colors.grey, size: 24,),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_my_nagad.png"), color: Colors.grey, size: 24,),
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