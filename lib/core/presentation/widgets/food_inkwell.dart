import 'package:flutter/material.dart';

typedef OnTap = Function();

class FoodInkWell extends StatefulWidget {
  const FoodInkWell({
    super.key,
    required this.child,
    required this.onTap,
    this.globalKey,
  });

  final Widget child;
  final OnTap onTap;
  final Key? globalKey;
  @override
  State<FoodInkWell> createState() => _FoodInkWellState();
}

class _FoodInkWellState extends State<FoodInkWell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: widget.globalKey,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.onTap,
      child: widget.child,
    );
  }
}
