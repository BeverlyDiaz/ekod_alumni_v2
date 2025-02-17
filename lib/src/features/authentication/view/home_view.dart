import 'package:ekod_alumni/src/widgets/title.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTitle(
                  title: 'Les actualités',
                ),
                Image.asset(
                  'assets/images/avatar.png',
                  height: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
