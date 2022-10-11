import 'package:flutter/material.dart';

class RedDot extends StatelessWidget {
  const RedDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          shape: BoxShape.circle),
      child: const Padding(
        padding: EdgeInsets.all(1),
        child: CircleAvatar(
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
