import 'package:ekod_alumni/src/widgets/text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomText(
            text: 'Home',
          )
        ],
      ),
    );
  }
}
