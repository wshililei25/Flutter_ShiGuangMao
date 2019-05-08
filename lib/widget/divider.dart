import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  double height = 8;

  DividerWidget(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(height: height, color: Color.fromARGB(255, 247, 247, 247));
  }
}
