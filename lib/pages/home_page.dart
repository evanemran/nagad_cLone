import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/home_menu.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/home_menu_widget.dart';

final List<String> imgList = [
  'assets/nagad_banner1.png',
  'assets/nagad_banner2.png',
  'assets/nagad_banner3.png',
  // 'assets/banner_three.png',
  // 'assets/banner_four.png',
];

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

    List<HomeMenu> othersList = [
      HomeMenu.CONTACT,
      HomeMenu.ZAKAT_CALCULATOR,
      HomeMenu.LIMIT_AND_CHARGE,
      HomeMenu.SHADHIN,
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

          _buildImageSlider(),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: [const Expanded(child: Padding(padding: EdgeInsets.only(left: 12.0), child: Text('Others'),)),],),
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
              children: List.generate(othersList.length, (index) {
                return Center(
                  child: InkWell(child: MenuWidget(title: othersList[index].title, image: othersList[index].icon),
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

  Widget _buildImageSlider(){
    return Container(padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 12.0), child: CarouselSlider(
      options: CarouselOptions(height: 120.0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        disableCenter: true,
        viewportFraction: 1,
        enlargeCenterPage: true,
      ),
      items: imgList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                i,
                height: 120,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    ),);
  }
}