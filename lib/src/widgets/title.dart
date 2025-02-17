import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final double size;
  final Color color;

  const CustomTitle({
    super.key,
    this.title = "Titre",
    this.size = 30,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
