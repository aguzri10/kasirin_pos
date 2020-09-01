import 'package:flutter/material.dart';
import 'package:kasirin_pos/views/styles/color.dart';

class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 52,
            width: 52,
            decoration:
                BoxDecoration(color: primaryColor, shape: BoxShape.circle),
            child: Center(
              child: Text(
                'Ar',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF828282),
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Agus Riyanto',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF828282),
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Banana IT',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF828282),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
