import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/widgets/custom_drawer.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaksi')),
      drawer: CustomDrawer(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
