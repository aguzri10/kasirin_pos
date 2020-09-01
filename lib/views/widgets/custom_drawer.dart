import 'package:flutter/material.dart';
import 'package:kasirin_pos/core/routes/constants.dart';
import 'package:kasirin_pos/views/widgets/header_drawer.dart';
import 'package:kasirin_pos/views/widgets/items_drawer.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF1E202C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HeaderDrawer(),
            ItemsDrawer(
              icon: Icons.shopping_cart,
              text: 'Checkout',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, checkoutRoute),
            ),
            ItemsDrawer(
              icon: Icons.table_chart,
              text: 'Tables',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, tablesRoute),
            ),
            ItemsDrawer(
              icon: Icons.data_usage,
              text: 'Transaction',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, transactionRoute),
            ),
            ItemsDrawer(
              icon: Icons.store,
              text: 'Store',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, storeRoute),
            ),
          ],
        ),
      ),
    );
  }
}
