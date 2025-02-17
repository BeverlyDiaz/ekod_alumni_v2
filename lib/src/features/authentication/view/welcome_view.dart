import 'package:ekod_alumni/src/app/app.dart';
import 'package:ekod_alumni/src/widgets/button.dart';
import 'package:ekod_alumni/src/widgets/logo.dart';
import 'package:ekod_alumni/src/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            SizedBox(height: 20),
            CustomText(
              text: "Bienvenue !",
            ),
            SizedBox(height: 20),
            CustomText(
              text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            ),
            SizedBox(height: 20),
            Button(
                onPressed: () {
                  context.goNamed(AppRoute.signIn.name);
                },
                text: "Se connecter"),
            SizedBox(
              height: 20,
            ),
            Button(
              onPressed: () {
                context.goNamed(AppRoute.signUp.name);
              },
              text: "S'inscrire",
            ),
          ],
        ),
      ),
    );
  }
}
