import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/widgets/custom_drawer.dart';

class StorePage extends StatelessWidget {
const StorePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store')),
      drawer: CustomDrawer(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}