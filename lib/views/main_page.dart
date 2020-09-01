import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/tab-store/index.dart';
import 'package:kasirin_pos/views/tab-tables/index.dart';
import 'package:kasirin_pos/views/tab-transaction/index.dart';

import 'tab-checkout/index.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageStorageBucket _bucket = PageStorageBucket();
  int _selectedIndex = 0;
  List<Widget> _pages = [
    CheckoutPage(key: PageStorageKey('checkout')),
    TablesPage(key: PageStorageKey('tables')),
    TransactionPage(key: PageStorageKey('transaction')),
    StorePage(key: PageStorageKey('store'))
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: _bucket, child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text('Checkout'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Transaksi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            title: Text('Data Toko'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text('Info Toko'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
