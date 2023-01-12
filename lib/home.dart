import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaspibank_ratkum/pages/home_pages.dart';
import 'package:kaspibank_ratkum/pages/service_pages.dart';
import 'package:kaspibank_ratkum/pages/sms_pages.dart';

import 'pages/kaspiqr_pages.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static  TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = [
    HomePage(),
    KaspiQr_Pages(),
    Sms_Pages(),
    Service_Pages()
  ];

  void _onItemTapped(int index) {
   index == 1 ?  Navigator.of(context,rootNavigator: true).push(CupertinoPageRoute<bool>(
            builder: (BuildContext context) => KaspiQr_Pages(),
          ),)
   : setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: 'Kaspi QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms_outlined),
            label: 'Сообщения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Сервисы',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
        unselectedLabelStyle: TextStyle(
          color: Colors.green,
          fontSize: 10,
        ),
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
