import 'package:flutter/material.dart';
import 'package:ui_components/ui_components.dart';
import 'package:vaultarium/features/auth/views/widges/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: CenteredConstrainedContainer(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: Dimens.s24),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: Dimens.s100,
                  ),
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
