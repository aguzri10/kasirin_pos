import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/widgets/custom_drawer.dart';

class TablesPage extends StatelessWidget {
  const TablesPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Tables'),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}