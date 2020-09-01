import 'package:flutter/material.dart';

class ItemsDrawer extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const ItemsDrawer({
    Key key,
    this.icon,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white70),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
