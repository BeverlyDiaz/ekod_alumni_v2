import 'package:ekod_alumni/src/app/app.dart';
import 'package:ekod_alumni/src/widgets/button.dart';
import 'package:ekod_alumni/src/widgets/logo.dart';
import 'package:ekod_alumni/src/widgets/text_field.dart';
import 'package:ekod_alumni/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            const SizedBox(
              height: 20,
            ),
            CustomTitle(
              title: 'Connectez-vous',
            ),
            const SizedBox(height: 20),
            Column(children: [
              CustomTextField(
                label: 'E-mail',
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: 'Mot de passe',
                prefixIcon: Icons.lock_outlined,
                suffixIcon: Icons.visibility_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              Button(
                text: 'Se connecter',
                onPressed: () {
                  context.goNamed(AppRoute.home.name);
                },
              )
            ]),
          ],
        ),
      ),
    );
  }
}
