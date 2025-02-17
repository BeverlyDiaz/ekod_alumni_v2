import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double? height;
  const Logo({super.key, this.height = 150});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo-ekod.png',
      height: height,
    );
  }
}
