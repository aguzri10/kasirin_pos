import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVertical;
  final Widget child;
  final bool reverse;
  final double radius;

  const ContainerShadow({
    Key key,
    this.paddingHorizontal = 0.0,
    this.paddingVertical = 0.0,
    this.reverse = false,
    this.radius = 5.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      width: double.infinity,
      child: child,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: reverse ? Offset(5, 0) : Offset(0, 5))
        ],
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
    );
  }
}
